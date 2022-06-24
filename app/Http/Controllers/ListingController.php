<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Listing;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use ParsedownExtra;

class ListingController extends Controller
{
    
    public function index(Request $request){

        $listings = Listing::where('is_active',true)
            // with the associated tag models
            ->with('tags')
            // sort by created at desc
            ->latest()
            ->get();

        // Getting all the tags
        $tags = Tag::orderBy('name')
            ->get();

        //  Filter
        // check if the request  object has any value of of 's'
        if($request->has('s')){

            $query = strtolower($request->get('s'));
            // modified listing collection -> looping to the collection with filter method
            $listings = $listings->filter(function($listing) use($query){
                // keeps or discards items based on their boolean return
                if(Str::contains(strtolower($listing->title), $query)){
                    return true;
                }

                if(Str::contains(strtolower($listing->company), $query)){
                    return true;
                }

                if(Str::contains(strtolower($listing->location), $query)){
                    return true;
                }

                // if(Str::contains(strtolower($listing->content), $query)){
                //     return true;
                // }

                return false;

            });            

        }

        //  Filter
        // check if the request  object has any value of tag
        if($request->has('tag')){

            $tag = $request->get('tag');

            // modified listing collection -> looping to the collection with filter method
            $listings = $listings->filter(function($listing) use($tag){

                // check tag names against listing->tags
                
                return $listing->tags->contains('slug',$tag);                

            });

        }

        return view('listings.index',compact('listings','tags'));

    }
    
    // show the individual listing's details
    public function show(Listing $listing, Request $request)
    {
      

        return view('listings.show', compact('listing'));
    }

    public function apply(Listing $listing, Request $request)
    {
        // associate a new click
        $listing->clicks()
            ->create([
                'user_agent' => $request->userAgent(),
                'ip' => $request->ip()
            ]);
        
        // redirect to our apply link
        return redirect()->to($listing->apply_link);
    }

    public function create(){
        

        return view('listings.create');

    }

    public function store( Request $request ){

        // process the listing creation form && validate the inputs
        // Make the purchase and create the listing
        
        // 1. Validate the request coming through
        $validationArray = [
            'title' => 'required',
            'company' => 'required',
            'logo' => 'file|max:2048',
            'location' => 'required',
            'apply_link' => 'required|url',
            'content'   => 'required',
            'payment_method_id' => 'required'
        ];

        // 2. Lets determine if a user is authenticated (logged in )
        if(!Auth::check()){
            $validationArray = array_merge($validationArray,[
                'email' => 'required|email|unique:users',                
                'password' => 'required|confirmed|min:5',
                'name' => 'required'
            ]);
        }
        // 3. Valididation 
        $request->validate($validationArray);

        // 4. Lets determine if the user is signed in
        $user = Auth::user();

        // 5. if there is nor we will create one
        if(!$user){
            $user = User::create([
                'name' =>$request->name,
                'email' =>$request->email,
                'password' => Hash::make($request->password)
            ]);

            // 6. Create as Stripe Customer : generates values on our Stripe application and DB to associate this user model with the ability to have  purchases saved to it
            $user->createAsStripeCustomer();

            // 7. Authenticate the user directly
            Auth::login($user);

        }       

        

        // 8. Process the payment and create a listing
        try {
            // Amount in cents
            $amount = 9900;
            // check if the 'is highlighted' field was checked if it then we charge extra money
            if($request->filled('is_highlighted')){
                $amount += 1900;
            }

            $user->charge($amount, $request->payment_method_id);

            // mardown - initialize parseDownExtra
            $md = new \ParsedownExtra();

            // create a listing attaching to our user model
            $listing = $user->listings()
                ->create([
                    'title' => $request->title,
                    'slug' => Str::slug($request->title),
                    'company' => $request->company,
                    
                    'logo' => basename($request->file('logo')->store('public')),
                    'location' => $request->location,
                    'apply_link' => $request->apply_link,
                    'content' => $md->text($request->content),
                    'is_highlighted' => $request->filled('is_highlighted'),
                    'is_active' => true
                ]);
            
            // Set our attention to the tags
            foreach(explode(',',$request->tags) as $requestTag){
                $tag = Tag::firstOrCreate([
                    // 1. parameter : condition
                    'slug' => Str::slug(trim($requestTag)),

                ],[
                    // If there is no model match the above condition
                    // then we one will be created wit the data based on the 2nd parameter
                    'name' => ucwords( trim($requestTag) )
                ]);

                // next we call the listings relationship on it
                // and attach the created $lsiting->id
                // this sets the relationship between the tag we found or created
                // and the listing we just created
                $tag->listings()->attach($listing->id);

            }

            // finally return a redirect to the users dashboard route what we so earlier when installing breeze
            return redirect()->route('dashboard');


        } catch (\Exception $e) {
            //throw $e;
            return redirect()->back()
                ->withErrors(['error' => $e->getMessage()]);
        }

    }
}

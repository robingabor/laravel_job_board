<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;

class ListingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {   
        
        $title = $this->faker->sentence(rand(5,7));
        $datetime = $this->faker->dateTimeBetween('-1 month','now');
        $image = $this->faker->image(storage_path('app/public'),640,480);        
        // dd($image);        

        $content = '';

        for($i=0; $i<5; $i++){
            $content .= '<p class="mb-4">' . $this->faker->sentences(rand(5,10),true) . '</p>';
        }

        return [
            //
            'title' =>$title,
            'slug' => Str::slug($title) . '-' . rand(1111,9999),
            'company' =>$this->faker->company(),
            'location' => $this->faker->country(),
            'logo' => basename($image),            
            // 'logo' => basename(Storage::disk('public')->put('storage/app/public', $logo)),
            'is_highlighted' =>(rand(1,9) >7),
            'is_active'=>true,
            'content' =>$content,
            'apply_link' =>$this->faker->url,
            'created_at' =>$datetime,
            'updated_at' =>$datetime


        ];
    }
}

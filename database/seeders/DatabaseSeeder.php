<?php

namespace Database\Seeders;

use App\Models\Listing;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {   
        // Generate and store seeded data
        // we can ran it with : "php artisan db:seed" command
        // \App\Models\User::factory(10)->create();
        // \App\Models\Tag::factory(10)->create();
        // \App\Models\Listing::factory(10)->create();

        // Generate Tags
        $tags = \App\Models\Tag::factory(10)->create();

        \App\Models\User::factory(20)->create()->each(function($user) use($tags){
            Listing::factory(rand(1,4))->create([
                'user_id' => $user->id
            ])->each(function($listing) use($tags){
                // attach used in many to many relationships and expects an eloquent objects or just an array of model id-s
                $listing->tags()->attach($tags->random(2));
            });
        });

    }
}

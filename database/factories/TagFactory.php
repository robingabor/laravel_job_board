<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class TagFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        $name = ucwords($this->faker->word);

        return [
            //no need to add id and datetime attributes
            // because they are auto generated
                       
            'name' => $name,
            'slug' => Str::slug($name)
            
            
        ];
    }
}

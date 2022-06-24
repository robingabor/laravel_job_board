<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Listing extends Model
{
    use HasFactory;

    protected $guarded = [];

    // model route binding
    // public function getRouteKeyName()
    // {
    //     // return a string corresponding a column in the db there we want to reference for the model route binding
    //     // because by default it expects the  id of the model
    //     return 'slug';
    // }

    

    // each listing has  multiple clicks
    public function clicks(){

        return $this->hasMany(Click::class);

    }

    // each listing belongs to 1 user
    public function user(){

        return $this->belongsTo(User::class);
    }

     // each listing can have multiple tags
     public function tags(){

        return $this->belongsToMany(Tag::class);
    }

}

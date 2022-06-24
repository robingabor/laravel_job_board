<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    use HasFactory;

    protected $fillable = [
        'slug',
        'name'
    ];

    // protected $quarded = [];




    // each listing can have multiple tags
    public function listings(){

        return $this->belongsToMany(Listing::class);
    }


}

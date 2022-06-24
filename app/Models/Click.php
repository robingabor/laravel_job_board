<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Click extends Model
{
    use HasFactory;

    protected $guarded = [];

    // each click belongs to 1 listing
    public function listing(){

        return $this->belongsTo(Listing::class);

    }

}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    protected $fillable = [
        'name',
        'steam',
        'steam_info',
        'origin',
        'origin_info',
        'uplay',
        'uplay_info',
        'epicgames',
        'epicgames_info',
        'gog',
        'gog_info'
    ];
}

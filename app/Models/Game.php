<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    protected $fillable = [
        'name', 'steam', 'origin', 'uplay', 'epicgames', 'gog'
    ];

    protected $casts = [
        'steam' => 'array',
        'origin' => 'array',
        'uplay' => 'array',
        'epicgames' => 'array',
        'gog' => 'array',
    ];
}

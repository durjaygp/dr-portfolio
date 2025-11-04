<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class HomepageSetting extends Model
{
    //
    protected $casts = [
        'header_json_button' => 'array',
        'target_roles' => 'array',
        'about_us_list' => 'array',
        'working_hours' => 'array',
        'process_step' => 'array',
        'choose_options' => 'array',
        'provide_options' => 'array',
        'hero_features' => 'array',
    ];
    // add fillable
    protected $fillable = [];
    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];

    protected static function booted()
    {
        static::saved(function () {
            cache()->forget('homepage');
        });

        static::deleted(function () {
            cache()->forget('homepage');
        });
    }


}

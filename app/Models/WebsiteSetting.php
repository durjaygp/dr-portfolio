<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WebsiteSetting extends Model
{
    //

    // add fillable
    protected $fillable = [];
    // add guaded
    protected $guarded = ['id'];
    // add hidden
    protected $hidden = ['created_at', 'updated_at'];
    protected static function booted()
    {
        static::saved(function () {
            cache()->forget('setting');
        });

        static::deleted(function () {
            cache()->forget('setting');
        });
    }

}

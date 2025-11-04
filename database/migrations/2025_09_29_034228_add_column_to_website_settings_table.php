<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('website_settings', function (Blueprint $table) {
            // Color Settings (only one column per color)
            $table->string('primary_color')->nullable();
            $table->string('secondary_color')->nullable();
            $table->string('text_color')->nullable();
            $table->string('accent_color')->nullable();
            $table->string('white_color')->nullable();
            $table->string('divider_color')->nullable();
            $table->string('dark_divider_color')->nullable();
            $table->string('error_color')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('website_settings', function (Blueprint $table) {
            // Drop all added columns
//            $table->dropColumn([
//                'name',
//                'description',
//                'google',
//                'author',
//                'keywords',
//                'tags',
//                'url',
//                'website_logo',
//                'fav_icon',
//                'map',
//                'contact_spam_keywords',
//
//                'footer_heading',
//                'footer',
//                'address',
//                'email',
//                'phone',
//                'footer_card_title',
//                'footer_card_paragraph',
//
//                'primary_color',
//                'primary_color_code',
//                'secondary_color',
//                'secondary_color_code',
//                'text_color',
//                'text_color_code',
//                'accent_color',
//                'accent_color_code',
//                'white_color',
//                'white_color_code',
//                'divider_color',
//                'divider_color_code',
//                'dark_divider_color',
//                'dark_divider_color_code',
//                'error_color',
//                'error_color_code',
//            ]);
        });
    }
};

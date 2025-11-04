<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(10)->create();

        User::factory()->create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
        ]);

        \App\Models\WebsiteSetting::create([
            'id' => 1,
            'name' => 'Website Name',
            'description' => 'user@gmail.com',
            'footer' => 'footer Text',
            'google' => 'footer Text',
            'author' => 'author Name',
            'keywords' => 'author Name',
            'tags' => 'author Name',
            'url' => 'author Name',
            'website_logo' => 'website_logo.jpg',
            'fav_icon' => 'fav_icon.jpg',
        ]);


        //call BookSeeder
        $this->call(
            [
                BookSeeder::class,
                PostSeeder::class,
                ContactSeeder::class,
                BlogCategorySeeder::class,
                BlogSeeder::class,
                CategorySeeder::class,
                CustomReviewSeeder::class,
            ]
        );
    }
}

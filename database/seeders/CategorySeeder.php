<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = [
            'Appetizers' => ['Dips & Spreads', 'Finger Foods', 'Cheese Platters'],
            'Main Dishes' => ['Chicken', 'Beef', 'Pasta', 'Seafood', 'Vegetarian'],
            'Salads' => ['Green Salads', 'Pasta Salads', 'Fruit Salads', 'Grain Salads'],
            'Soups' => ['Broth-based Soups', 'Creamy Soups', 'Chili'],
            'Side Dishes' => ['Vegetables', 'Potatoes', 'Rice', 'Bread'],
            'Breakfast & Brunch' => ['Pancakes & Waffles', 'Egg Dishes', 'Breakfast Pastries'],
            'Desserts' => ['Cakes', 'Cookies', 'Pies & Tarts', 'Frozen Desserts'],
            'Beverages' => ['Smoothies', 'Coffee Drinks', 'Cocktails', 'Mocktails'],
            'Snacks' => ['Healthy Snacks', 'Sweet Snacks', 'Savory Snacks'],
            'International Cuisine' => ['Italian', 'Mexican', 'Indian', 'Asian'],
            'Vegan & Vegetarian' => ['Vegan Main Dishes', 'Vegetarian Appetizers', 'Plant-based Sides'],
        ];

        foreach ($categories as $categoryName => $subcategories) {
            $category = Category::create([
                'name' => $categoryName,
                'slug' => Str::slug($categoryName, '-')
            ]);

            foreach ($subcategories as $subcatName) {
                Subcategory::create([
                    'name' => $subcatName,
                    'slug' => Str::slug($subcatName, '-'),
                    'category_id' => $category->id,
                    'status' => 1,
                ]);
            }
        }
    }

}

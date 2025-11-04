<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Recipe;
use App\Models\Subcategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Str;
use Faker\Factory as Faker;
class RecipeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        $fake_images = [
            '1.jpg',
            '2.jpg',
            '3.jpg',
            '4.jpg',
            '5.jpg',
            '6.jpg',
            '7.jpg',
            '8.jpg',
            '9.jpg',
            '10.jpg',
            '11.jpg',
            '12.jpg',
            '13.jpg',
            '14.jpg',
            '15.jpg',
        ];

        $units = ['cups', 'tbsp', 'tsp', 'grams', 'ml', 'pieces'];

        // Get all category IDs from blog_categories table
        $categoryIds = DB::table('blog_categories')->pluck('id')->toArray();

        for ($i = 0; $i < 500; $i++) {
            $name = $faker->sentence(3);
            $slug = Str::slug($name) . '-' . $i;

            // Create structured ingredients list
            $ingredients = [];
            $ingredientCount = $faker->numberBetween(3, 8);

            for ($j = 0; $j < $ingredientCount; $j++) {
                $ingredients[] = [
                    'name' => ucfirst($faker->word),
                    'amount' => $faker->randomFloat(1, 0.5, 5),
                    'unit' => $faker->randomElement($units),
                ];
            }

            // Pick a random category ID from blog_categories
            $categoryId = $faker->randomElement($categoryIds);

            // Get subcategories for this category from subcategories table
            $subcategoryIds = DB::table('subcategories')
                ->where('category_id', $categoryId)
                ->pluck('id')
                ->toArray();

            // Pick a random subcategory or null if none exist
            $subcategoryId = count($subcategoryIds) > 0 ? $faker->randomElement($subcategoryIds) : null;

            Recipe::create([
                'name' => $name,
                'slug' => $slug,
                'image' => 'uploads/recipe/' . $faker->randomElement($fake_images),
                'main_content' => $faker->paragraphs(5, true),
                'description' => $faker->paragraph(),
                'user_id' => 11,  // adjust if needed
                'category_id' => $categoryId,
                'subcategory_id' => $subcategoryId,
                'preparation_time' => $faker->numberBetween(10, 60) . ' minutes',
                'person' => $faker->numberBetween(3, 8),

                'calorie' => $faker->numberBetween(3, 28).'g',
                'protein' => $faker->numberBetween(3, 18).'g',
                'carbohydrate' => $faker->numberBetween(10, 200).'g',
                'fat' => $faker->numberBetween(10, 30).'g',
                'difficulty' => $faker->randomElement(['Hard', 'Medium', 'Easy']),
                'additional_time' => $faker->numberBetween(0, 30) . ' minutes',
                'total_time' => $faker->numberBetween(10, 120) . ' minutes',
                'ingredients' => $ingredients, // encode as JSON if your DB expects JSON/string
                'seo_description' => $faker->sentence(10),
                'seo_tags' => implode(', ', $faker->words(5)),
                'seo_keywords' => implode(', ', $faker->words(5)),
                'views' => $faker->numberBetween(0, 1000),
                'status' => 1,
            ]);
        }
    }
}

<?php

namespace Database\Factories;

use App\Models\BlogCategory;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\BlogCategory>
 */
class BlogCategoryFactory extends Factory
{
    protected $model = BlogCategory::class;

    public function definition(): array
    {
        // Dental-related blog category examples
        $categories = [
            'Oral Hygiene',
            'Dental Implants',
            'Teeth Whitening',
            'Orthodontics',
            'Pediatric Dentistry',
            'Root Canal Treatment',
            'Cosmetic Dentistry',
            'Gum Care',
            'Dental Surgery',
            'Preventive Dentistry',
        ];

        $name = $this->faker->unique()->randomElement($categories);

        return [
            'name' => $name,
            'slug' => Str::slug($name),
            'status' => 1,
        ];
    }
}

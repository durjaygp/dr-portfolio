<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
use Carbon\Carbon;

class ServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        $services = [];

        for ($i = 1; $i <= 30; $i++) {
            $name = ucfirst($faker->words(2, true)); // e.g., "Creative Branding" or "Web Solutions"

            $services[] = [
                'name' => $name,
                'slug' => Str::slug($name),
                'image' => 'uploads/' . $faker->randomElement([
                        '01K6G4R93AZ3VN82T0QA9SAQSP.svg', '01K6G4R91DVZWR1QPWNSZXB5XE.svg', '01K6G53ST9TE27ZDNK7775927X.svg'
                    ]),
                'icons' => 'uploads/' . $faker->randomElement([
                        '01K6G4R93AZ3VN82T0QA9SAQSP.svg', '01K6G4R91DVZWR1QPWNSZXB5XE.svg', '01K6G53ST9TE27ZDNK7775927X.svg'
                    ]),
                'main_content' => '<p>' . $faker->paragraph(3) . '</p>',
                'description' => $faker->paragraph(5),
                'seo_description' => $faker->sentence(10),
                'seo_tags' => implode(', ', $faker->words(5)),
                'seo_keywords' => implode(', ', $faker->words(6)),
                'faqs_header' => 'Frequently Asked Questions about ' . $name,
                'faqs' => json_encode([
                    [
                        'question' => 'What is included in ' . strtolower($name) . '?',
                        'answer' => $faker->sentence(12)
                    ],
                    [
                        'question' => 'How much does it cost?',
                        'answer' => 'Pricing depends on your project requirements.'
                    ]
                ]),
                'status' => 1,
                'location' => $faker->city . ', ' . $faker->country,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }

        DB::table('services')->insert($services);
    }
}

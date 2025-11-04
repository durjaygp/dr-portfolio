<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CustomReviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('custom_reviews')->insert([
            [
                'name' => 'Emily Johnson',
                'rating' => '5',
                'subject' => 'Amazing Teeth Cleaning',
                'review' => 'I had a wonderful experience! The staff was very friendly and professional. My teeth feel cleaner than ever and I didn’t feel rushed at all. Highly recommend!',
                'image' => 'reviews/emily.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Michael Smith',
                'rating' => '4',
                'subject' => 'Quick Emergency Visit',
                'review' => 'I had a terrible toothache and they scheduled me the same day. The dentist was very gentle during the extraction and explained everything clearly. Great service!',
                'image' => 'reviews/michael.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Sarah Williams',
                'rating' => '5',
                'subject' => 'Beautiful Veneers',
                'review' => 'I finally decided to get veneers and I couldn’t be happier with the results. My smile looks so natural and I feel more confident than ever!',
                'image' => 'reviews/sarah.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'David Brown',
                'rating' => '5',
                'subject' => 'Best Pediatric Dentistry',
                'review' => 'Took my 7-year-old daughter for her first dental check-up and she loved it! The dentist was so kind and explained things in a way that made her feel comfortable.',
                'image' => 'reviews/david.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Jessica Taylor',
                'rating' => '4',
                'subject' => 'Invisalign Treatment',
                'review' => 'I’ve been doing Invisalign here for 8 months and the results are fantastic. The staff always follows up to make sure everything is going smoothly.',
                'image' => 'reviews/jessica.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Olivia Martinez',
                'rating' => '5',
                'subject' => 'Professional Staff',
                'review' => 'The team is very professional and caring. My routine checkups are always thorough and comfortable.',
                'image' => 'reviews/olivia.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Liam Anderson',
                'rating' => '4',
                'subject' => 'Friendly Environment',
                'review' => 'I was nervous about getting a root canal, but the staff made me feel at ease. Highly recommended!',
                'image' => 'reviews/liam.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Sophia Robinson',
                'rating' => '5',
                'subject' => 'Teeth Whitening Results',
                'review' => 'Amazing teeth whitening service! My smile looks brighter and the procedure was painless.',
                'image' => 'reviews/sophia.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Noah Wilson',
                'rating' => '4',
                'subject' => 'Gentle Dentist',
                'review' => 'The dentist is very gentle and explains every step. I feel confident visiting here regularly.',
                'image' => 'reviews/noah.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Ava Lewis',
                'rating' => '5',
                'subject' => 'Dental Implants Success',
                'review' => 'Got my dental implants done here and the results are excellent. The process was smooth and pain-free.',
                'image' => 'reviews/ava.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'James Hall',
                'rating' => '5',
                'subject' => 'Comfortable Visit',
                'review' => 'Very comfortable environment. I never thought going to the dentist could feel this relaxing!',
                'image' => 'reviews/james.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Isabella Young',
                'rating' => '4',
                'subject' => 'Good Cosmetic Dentistry',
                'review' => 'Had cosmetic work done on my teeth. Staff is knowledgeable and the results look natural.',
                'image' => 'reviews/isabella.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Benjamin King',
                'rating' => '5',
                'subject' => 'Friendly with Kids',
                'review' => 'Took my son for his first dental cleaning. The staff is excellent with kids and made him feel comfortable.',
                'image' => 'reviews/benjamin.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'Mia Scott',
                'rating' => '5',
                'subject' => 'Emergency Care',
                'review' => 'I had a dental emergency and they saw me immediately. Very professional and caring service!',
                'image' => 'reviews/mia.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'name' => 'William Adams',
                'rating' => '4',
                'subject' => 'Clear Explanations',
                'review' => 'The dentist explained the procedure clearly and answered all my questions. Very reassuring experience.',
                'image' => 'reviews/william.jpg',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}

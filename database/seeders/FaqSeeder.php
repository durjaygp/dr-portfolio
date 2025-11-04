<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Faq;

class FaqSeeder extends Seeder
{
    public function run(): void
    {
        $faqs = [
            [
                'question' => 'What services do you offer?',
                'answer' => 'Yes, we accept a variety of insurance plans. Please contact our office to verify if your specific insurance provider is accepted and to discuss coverage.',
            ],
            [
                'question' => 'How often should I visit the dentist?',
                'answer' => 'Dental sealants are thin, protective coatings applied to the chewing surfaces of molars to prevent cavities.',
            ],
            [
                'question' => 'Do you accept insurance?',
                'answer' => 'Yes, teeth whitening treatments performed by a dentist or with dentist-approved products are safe and effective.',
            ],
            [
                'question' => 'What can I expect during my first visit?',
                'answer' => 'Cosmetic dentistry focuses on improving the appearance of teeth, gums, and smile through procedures like whitening, veneers, and bonding.',
            ],
            [
                'question' => 'Do you offer emergency dental care?',
                'answer' => 'At-home whitening options include over-the-counter whitening strips, gels, toothpaste, and custom trays provided by your dentist.',
            ],
        ];

        foreach ($faqs as $faq) {
            Faq::create($faq);
        }
    }
}

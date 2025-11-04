<?php

namespace App\Http\Controllers;

use App\Models\Recipe;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use League\Csv\Reader;

class RecipeImportController extends Controller
{
    public function showForm()
    {
        return view('import');
    }
    public function import(Request $request)
    {
        $request->validate([
            'csv_file' => 'required|mimes:csv,txt'
        ]);

        $csv = Reader::createFromPath($request->file('csv_file')->getRealPath(), 'r');
        $csv->setHeaderOffset(0); // Use first row as header
        foreach ($csv->getRecords() as $record) {
            // Validate the JSON is properly formatted
            $ingredients = $record['ingredients'];
            json_decode($ingredients);
            if (json_last_error() !== JSON_ERROR_NONE) {
                $ingredients = '[]'; // Default to empty array if invalid JSON
            }

            Recipe::updateOrCreate(
                ['slug' => $record['slug']],
                [
                    'name' => $record['name'],
                    'slug' => $record['slug'],
                    'image' => $record['image'],
                    'person' => $record['person'],
                    'difficulty' => $record['difficulty'],
                    'calorie' => $record['calorie'],
                    'protein' => $record['protein'],
                    'carbohydrate' => $record['carbohydrate'],
                    'fat' => $record['fat'],
                    'main_content' => $record['main_content'],
                    'description' => $record['description'],
                    'user_id' => $record['user_id'],
                    'category_id' => $record['category_id'],
                    'subcategory_id' => $record['subcategory_id'],
                    'preparation_time' => $record['preparation_time'],
                    'additional_time' => $record['additional_time'],
                    'total_time' => $record['total_time'],
                    'ingredients' => json_decode($ingredients),
                    'seo_description' => $record['seo_description'],
                    'seo_tags' => $record['seo_tags'],
                    'seo_keywords' => $record['seo_keywords'],
                    'views' => $record['views'] ?? 0,
                    'status' => $record['status'] ?? 1,
                ]
            );
        }

        return Recipe::first();
    }

}

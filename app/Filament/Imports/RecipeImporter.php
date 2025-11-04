<?php

namespace App\Filament\Imports;

use App\Models\Recipe;
use Filament\Actions\Imports\ImportColumn;
use Filament\Actions\Imports\Importer;
use Filament\Actions\Imports\Models\Import;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Illuminate\Support\Str;

class RecipeImporter extends Importer
{
    protected static ?string $model = Recipe::class;

    public static function getColumns(): array
    {
        return [
            ImportColumn::make('name'),
            ImportColumn::make('slug'),
            ImportColumn::make('image'),
            ImportColumn::make('person'),
            ImportColumn::make('difficulty'),
            ImportColumn::make('calorie'),
            ImportColumn::make('protein'),
            ImportColumn::make('carbohydrate'),
            ImportColumn::make('fat'),
            ImportColumn::make('main_content'),
            ImportColumn::make('description'),
            ImportColumn::make('user_id'),
            ImportColumn::make('category_id'),
            ImportColumn::make('subcategory_id'),
            ImportColumn::make('preparation_time'),
            ImportColumn::make('additional_time'),
            ImportColumn::make('total_time'),
            ImportColumn::make('ingredients'),
            ImportColumn::make('seo_description'),
            ImportColumn::make('seo_tags'),
            ImportColumn::make('seo_keywords'),
            ImportColumn::make('views'),
            ImportColumn::make('status'),
        ];
    }


    public static function mutateRow(array $row): array
    {
        // Auto-generate slug if not provided
        if (empty($row['slug']) && !empty($row['name'])) {
            $row['slug'] = \Str::slug($row['name']);
        }

        if (!empty($row['ingredients']) && is_string($row['ingredients'])) {
            $decodedOnce = json_decode($row['ingredients'], true);

            if (is_string($decodedOnce)) {
                $decodedTwice = json_decode($decodedOnce, true);
                $row['ingredients'] = is_array($decodedTwice) ? $decodedTwice : [];
            } elseif (is_array($decodedOnce)) {
                $row['ingredients'] = $decodedOnce;
            } else {
                $row['ingredients'] = [];
            }
        }

        return $row;
    }





    public static function getFormFields(): array
    {
        return [
        TextInput::make('name')
                ->label('Name')
                ->required(),

        TextInput::make('slug')
                ->label('Slug'),

        Textarea::make('description')
                ->label('Short Description'),

        TextInput::make('category_id')
                ->label('Category ID'),

        TextInput::make('subcategory_id')
                ->label('Subcategory ID'),

        TextInput::make('image')
                ->label('Image URL or Path'),

        TextInput::make('person')
                ->label('Number of Persons'),

        Textarea::make('main_content')
                ->label('Main Content'),

        TextInput::make('preparation_time'),
        TextInput::make('additional_time'),
        TextInput::make('total_time'),
        TextInput::make('difficulty'),
        TextInput::make('calorie'),
        TextInput::make('protein'),
        TextInput::make('carbohydrate'),
        TextInput::make('fat'),

        Textarea::make('ingredients')
                ->label('Ingredients (JSON)')
                ->placeholder('[{"name": "Sugar", "amount": "1", "unit": "cup"}]'),

        Textarea::make('seo_description'),
        Textarea::make('seo_tags'),
        Textarea::make('seo_keywords'),

        TextInput::make('views')
                ->numeric()
                ->default(0),

        Toggle::make('status')
                ->label('Published')
                ->default(true),

        TextInput::make('user_id')
                ->label('User ID'),
        ];
    }


    public function resolveRecord(): ?Recipe
    {
        // return Recipe::firstOrNew([
        //     // Update existing records, matching them by `$this->data['column_name']`
        //     'email' => $this->data['email'],
        // ]);

        return new Recipe();
    }

    public static function getCompletedNotificationBody(Import $import): string
    {
        $body = 'Your recipe import has completed and ' . number_format($import->successful_rows) . ' ' . str('row')->plural($import->successful_rows) . ' imported.';

        if ($failedRowsCount = $import->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to import.';
        }

        return $body;
    }
}

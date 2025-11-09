<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PagesResource\Pages;
use App\Filament\Resources\PagesResource\RelationManagers;
use App\Models\Pages as MainPages;
use App\Models\PageSection;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;
use Filament\Forms\Get;
use Filament\Forms\Set;
use Filament\Forms\Components\TextInput;


class PagesResource extends Resource
{
    protected static ?string $model = MainPages::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';



    public static function form(Form $form): Form
        {
            return $form
                ->schema([
                    Forms\Components\TextInput::make('title')
                        ->label('Title')
                        ->required()
                        ->maxLength(255)
                        ->live(onBlur: true) // update when user leaves the field; change to ->reactive() if you want real-time typing
                        ->afterStateUpdated(function (Get $get, Set $set, ?string $old, ?string $state) {
                            // If the user edited the slug manually (i.e. current slug !== auto slug from previous title), do NOT overwrite
                            if (($get('slug') ?? '') !== Str::slug($old ?? '')) {
                                return;
                            }

                            if (filled($state)) {
                                // Clean up the title, keep unicode letters/numbers, strip weird symbols, then slugify
                                $slug = (string) Str::of($state)
                                    ->ascii()                                  // normalize accents
                                    ->replaceMatches('/[^\pL\pN\s-]+/u', '')   // remove unwanted punctuation
                                    ->slug('-');                               // build slug with dashes

                                $set('slug', $slug);
                            }
                        })
                        ->columnSpanFull(),

                    Forms\Components\TextInput::make('slug')
                        ->label('Slug')
                        ->required()
                        ->maxLength(255)
                        ->helperText('Auto-generated from title, but you can edit it.'),



                    Forms\Components\FileUpload::make('image')
                        ->image()
                        ->disk('uploads') // use your custom disk from config/filesystems.php
                        ->directory('')   // saves directly into public/uploads/
                        ->visibility('public'),

                    Forms\Components\Textarea::make('description')
                        ->columnSpanFull(),

                    Forms\Components\RichEditor::make('main_content')
                        ->columnSpanFull(),

                    // 🔁 Repeater for Components
                    Forms\Components\Repeater::make('components')
                        ->label('Components')
                        ->schema([
                            Forms\Components\Select::make('type')
                                ->label('Component Type')
                                ->options(PageSection::pluck('title', 'id')) // 👈 dynamically load options
                                ->required()
                                ->searchable(),

                            Forms\Components\TextInput::make('sort_by')
                                ->label('Sort By')
                                ->maxLength(255),
                        ])
                        ->columns(2)
                        ->columnSpanFull()
                        ->collapsible()
                        ->createItemButtonLabel('Add Component'),

                    Forms\Components\TextInput::make('meta_title')
                        ->maxLength(255),

                    Forms\Components\Textarea::make('meta_description')
                        ->columnSpanFull(),

                    Forms\Components\TextInput::make('meta_keywords')
                        ->maxLength(255),

                    Forms\Components\Toggle::make('status')
                        ->required(),
                ]);
        }



    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->searchable(),
                Tables\Columns\TextColumn::make('slug')
                    ->searchable(),
                Tables\Columns\ToggleColumn::make('status'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
   Tables\Actions\DeleteAction::make(),

            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPages::route('/'),
            'create' => Pages\CreatePages::route('/create'),
            'edit' => Pages\EditPages::route('/{record}/edit'),
        ];
    }
}

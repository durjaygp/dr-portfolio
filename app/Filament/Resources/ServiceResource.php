<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ServiceResource\Pages;
use App\Filament\Resources\ServiceResource\RelationManagers;
use App\Models\Service;
use Filament\Forms;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\Str;

class ServiceResource extends Resource
{
    protected static ?string $model = Service::class;

    protected static ?string $navigationIcon = 'heroicon-o-briefcase';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Forms\Components\TextInput::make('name')
                    ->required()
                    ->maxLength(255)
                    ->live(onBlur: true) // only trigger when you leave the field
                    ->afterStateUpdated(function ($state, callable $set) {
                        if ($state) {
                            $set('slug', Str::slug($state));
                        }
                    }),

                Forms\Components\TextInput::make('slug')
                    ->required(),

                Forms\Components\TextInput::make('location')
                    ->required(),

//                Forms\Components\TextInput::make('slug')
//                    ->required()
//                    ->maxLength(255),
                Forms\Components\Textarea::make('description')
                    ->columnSpanFull(),
                Forms\Components\FileUpload::make('image')
                    ->directory('uploads')
                    ->columnSpanFull(),
                Forms\Components\FileUpload::make('icons')
                    ->directory('uploads')
                    ->columnSpanFull(),
                Forms\Components\RichEditor::make('main_content')
                    ->columnSpanFull(),

                Forms\Components\Textarea::make('seo_tags')
                    ->label('SEO Page Title')
                    ->columnSpanFull(),
                Forms\Components\Textarea::make('seo_description')
                    ->label('Meta Description')
                    ->columnSpanFull(),

                Forms\Components\Textarea::make('seo_keywords')
                    ->columnSpanFull(),

                Forms\Components\Textarea::make('faqs_header')
                    ->label('FAQs Header/ Title')
                    ->columnSpanFull(),

                Repeater::make('faqs')
                    ->label('FAQs')
                    ->createItemButtonLabel('Add FAQ')
                    ->schema([
                        TextInput::make('question')
                            ->label('FAQ Question')
                            ->maxLength(255)
                            ->columnSpanFull(),
                        Textarea::make('answer')
                            ->label('FAQ Answer')
                            ->columnSpanFull(),
                    ])
                    ->columns(12)
                    ->columnSpanFull(),

                Forms\Components\Toggle::make('status'),
            ]);
    }
    public static function mutateFormDataBeforeCreate(array $data): array
    {
        if (empty($data['slug']) && !empty($data['name'])) {
            $data['slug'] = Str::slug($data['name']);
        }
        return $data;
    }
    public static function getNavigationSort(): ?int
    {
        return 2;
    }
    public static function table(Table $table): Table
    {
        return $table
            ->defaultSort('created_at', 'desc') // ✅ correct way
            ->columns([
                Tables\Columns\TextColumn::make('name')
                    ->searchable(),
                Tables\Columns\TextColumn::make('slug')
                    ->searchable(),
                Tables\Columns\ToggleColumn::make('status'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: false),
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
            'index' => Pages\ListServices::route('/'),
            'create' => Pages\CreateService::route('/create'),
            'edit' => Pages\EditService::route('/{record}/edit'),
        ];
    }
}

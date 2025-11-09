<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MenuResource\Pages;
use App\Filament\Resources\MenuResource\RelationManagers;
use App\Models\Menu;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;


use App\Models\Pages as MainPage;
use App\Models\Service;

use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Toggle;
use Filament\Forms\Components\Repeater;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Columns\BadgeColumn;


class MenuResource extends Resource
{
    protected static ?string $model = Menu::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static bool $shouldRegisterNavigation = false;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Menu Information')
                    ->schema([
                        // 🏷️ Title
                        TextInput::make('title')
                            ->label('Menu Title')
                            ->required()
                            ->maxLength(255),

                        // 🔗 Parent menu
                        Select::make('parent_id')
                            ->label('Parent Menu')
                            ->options(fn () => Menu::whereNull('parent_id')->pluck('title', 'id')->toArray())
                            ->searchable()
                            ->nullable(),

                        // 📂 Menu type
                        Select::make('type')
                            ->label('Menu Type')
                            ->options([
                                'custom' => 'Custom URL',
                                'page' => 'Page',
                                'service' => 'Service',
                            ])
                            ->required()
                            ->reactive(), // updates dependent fields

                        // 🧩 Linked items (multi-select)
                        Select::make('reference_ids')
                            ->label('Select Pages or Services')
                            ->multiple()
                            ->options(function (callable $get) {
                                $type = $get('type') ?? null;

                                if ($type === 'page') {
                                    return MainPage::pluck('title', 'id')->toArray();
                                }

                                if ($type === 'service') {
                                    return Service::pluck('name', 'id')->toArray();
                                }

                                // Safely return an empty array when type is null or custom
                                return [];
                            })
                            ->preload()
                            ->searchable()
                           // ->saveRelationships(false)
                            ->visible(fn (callable $get) => in_array($get('type'), ['page', 'service'], true)),

                        // 🌐 Custom URL field
                        TextInput::make('url')
                            ->label('Custom URL')
                            ->placeholder('/about-us or https://example.com')
                            ->visible(fn (callable $get) => $get('type') === 'custom'),

                        // 🔢 Order
                        TextInput::make('order')
                            ->label('Order')
                            ->numeric()
                            ->default(0),

                        // ⚙️ Toggles
                        Toggle::make('enable_livewire')
                            ->label('Enable wire:navigate'),

                        Toggle::make('status')
                            ->label('Active')
                            ->default(true),

                        Toggle::make('is_featured')
                            ->label('Featured')
                            ->default(false),
                    ])
                    ->columns(2),
            ]);
    }


    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('title')->searchable()->sortable(),
                TextColumn::make('parent.title')->label('Parent'),
                TextColumn::make('type')->badge(),
                TextColumn::make('url')->limit(40),
                ToggleColumn::make('enable_livewire'),
                ToggleColumn::make('status'),
                TextColumn::make('order')->sortable(),
            ])
            ->defaultSort('order')
            ->reorderable('order')
            ->filters([])
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
            'index' => Pages\ListMenus::route('/'),
            'create' => Pages\CreateMenu::route('/create'),
            'edit' => Pages\EditMenu::route('/{record}/edit'),
        ];
    }
}

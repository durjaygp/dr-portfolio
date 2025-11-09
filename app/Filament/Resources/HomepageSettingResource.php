<?php

namespace App\Filament\Resources;

use App\Filament\Resources\HomepageSettingResource\Pages;
use App\Filament\Resources\HomepageSettingResource\RelationManagers;
use App\Models\HomepageSetting;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Tabs;
use Filament\Forms\Components\Tabs\Tab;
//use Filament\Forms\Components\Tabs\Tabs;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Guava\FilamentIconPicker\Forms\IconPicker;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Navigation\NavigationItem;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
//use Filament\Forms\Components\Card;
//use Filament\Forms\Components\Collapsible;

class HomepageSettingResource extends Resource
{
    protected static ?string $model = HomepageSetting::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make() // wrap everything in a card for full width
                ->schema([
                    Tabs::make('Homepage Tabs')
                        ->tabs([
                            Tab::make('Hero Section')
                                ->schema([
                                    TextInput::make('header_title')
                                        ->label('Name')->columnSpanFull(),


                                    TextInput::make('designation')
                                        ->label('Designation')->columnSpanFull(),

                                    Forms\Components\RichEditor::make('header_small_paragraph')->label('Description')->columnSpanFull(),
                                    //TextInput::make('header_phone_number')->columnSpanFull(),
                                    FileUpload::make('header_image')
                                        ->image()
                                        ->disk('uploads')
                                        ->directory('')
                                        ->visibility('public')
                                        ->columnSpanFull(),
                                    TextInput::make('header_button')->label('Button Text')->columnSpanFull(),
                                    Textarea::make('header_button_url')->label('Button URL')->columnSpanFull(),
                                ]),



//                            Tab::make('About Section')
//                                ->schema([
//                                    TextInput::make('about_title')->columnSpanFull(),
//                                    Textarea::make('about_description')->columnSpanFull(),
//                                    TextInput::make('about_button')->columnSpanFull(),
//                                    Textarea::make('about_button_url')->columnSpanFull(),
//                                    FileUpload::make('about_image')
//                                        ->image()
//                                        ->disk('uploads') // use your custom disk from config/filesystems.php
//                                        ->directory('')   // saves directly into public/uploads/
//                                        ->visibility('public')
//                                        ->columnSpanFull(),
//
//
//                                    Forms\Components\Toggle::make('about_status')->columnSpanFull(),
//                                ]),

                            Tab::make('Blog Section')
                                ->schema([

                                    TextInput::make('blog_title')->label('Blog Section Title')->columnSpanFull(),
                                    Textarea::make('blog_paragraph')->label('Blog Section Short Description')->columnSpanFull(),
                                    Forms\Components\Toggle::make('blog_status')->columnSpanFull(),

                                    Textarea::make('blog_author_bio')
                                        ->label('Blog Author Bio')
                                        ->helperText('It will appear in each blog post page.')
                                        ->columnSpanFull(),
                                ]),

                            Tab::make('Contact Us')
                                ->schema([
                                    TextInput::make('contact_title')->columnSpanFull(),
//                                    TextInput::make('contact_header')->columnSpanFull(),
                                    Textarea::make('contact_paragraph')->columnSpanFull(),
                                    Forms\Components\Toggle::make('contact_status')->columnSpanFull(),
                                ]),
                        ])
                        ->columns(12),
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('header_title')
                    ->searchable(),
                Tables\Columns\TextColumn::make('header_second_line_title')
                    ->searchable(),

                Tables\Columns\ImageColumn::make('header_image'),

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
   //Tables\Actions\DeleteAction::make(),

            ])
            ->bulkActions([
//                Tables\Actions\BulkActionGroup::make([
//                    Tables\Actions\DeleteBulkAction::make(),
//                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }
    public static function canCreate(): bool
    {
        return false;
    }

    public static function canDelete(Model $record): bool
    {
        return false;
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListHomepageSettings::route('/'),
            'edit' => Pages\EditHomepageSetting::route('/{record}/edit'),
        ];
    }
    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()->where('id', 1);
    }
    public static function getNavigationSort(): ?int
    {
        return 2;
    }
    public static function getNavigationItems(): array
    {
        return [
            NavigationItem::make('Homepage Settings')
                ->url(self::getUrl('edit', ['record' => 1])) // wrap in array
                ->icon('heroicon-o-rectangle-stack'),
        ];
    }
}

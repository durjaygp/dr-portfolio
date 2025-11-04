<?php

namespace App\Filament\Resources;

use App\Filament\Resources\WebsiteSettingResource\Pages;
use App\Filament\Resources\WebsiteSettingResource\RelationManagers;
use App\Models\WebsiteSetting;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;

use Filament\Forms\Components\Tabs;
use Filament\Forms\Components\Tabs\Tab;

class WebsiteSettingResource extends Resource
{
    protected static ?string $model = WebsiteSetting::class;

    protected static ?string $navigationIcon = 'heroicon-o-wrench-screwdriver';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Tabs::make('SettingsTabs')
                        ->tabs([
                            // Website Settings
                            Tab::make('Website Logo & Map URL')
                                ->schema([

                                    Forms\Components\FileUpload::make('website_logo')
                                        ->image()
                                        ->directory('uploads')
                                        ->columnSpanFull(),

                                    Forms\Components\FileUpload::make('fav_icon')
                                        ->image()
                                        ->directory('uploads')
                                        ->columnSpanFull(),

                                    Forms\Components\Textarea::make('map_link')
                                        ->label('Please Give here your google map link')
                                        ->columnSpanFull(),

                                    Forms\Components\Textarea::make('map')
                                        ->label('Please Give here your google map iframe')
                                        ->columnSpanFull(),



                                ]),

                            // Footer Settings
                            Tab::make('Footer & Header Settings')
                                ->schema([




                                    Forms\Components\Textarea::make('address')
                                        ->columnSpanFull(),

                                    Forms\Components\TextInput::make('email')
                                        ->email()
                                        ->columnSpanFull(),

                                    Forms\Components\TextInput::make('phone')
                                        ->columnSpanFull(),

                                ]),

                            // 🎨 Color Settings
                            Tab::make('Color Settings')
                                ->schema([
                                    // 🧭 Top Header Section
                                    Forms\Components\Section::make('Top Header Menu')
                                        ->description('Customize the colors for the website’s top header area.')
                                        ->schema([
                                            Forms\Components\ColorPicker::make('top_header_back')
                                                ->label('Top Header Background Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('top_header_text')
                                                ->label('Top Header Text Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('top_header_text_hover')
                                                ->label('Top Header Text Hover Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('top_header_button')
                                                ->label('Top Header Button Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('top_header_button_hover')
                                                ->label('Top Header Button Hover Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('top_header_button_text')
                                                ->label('Top Header Button Text Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('top_header_button_text_hover')
                                                ->label('Top Header Button Text Hover Color')
                                                ->columnSpanFull(),
                                        ])
                                        ->collapsible()
                                        ->collapsed(false)
                                        ->columns(2),
                                    // 📱 Mobile Navbar Colors Section
                                    Forms\Components\Section::make('Mobile Navbar Colors')
                                        ->description('Set colors for the mobile navigation bar and its menu items.')
                                        ->schema([
                                            Forms\Components\ColorPicker::make('navbar_back_color')
                                                ->label('Navbar Background Color')
                                                ->columnSpanFull(),


                                            Forms\Components\ColorPicker::make('navbar_menu_text_color')
                                                ->label('Menu Text Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('navbar_menu_text_hover_color')
                                                ->label('Menu Text Hover Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('navbar_menu_mobile_text_color')
                                                ->label('Mobile Menu Text Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('navbar_menu_mobile_text_hover_color')
                                                ->label('Mobile Menu Text Hover Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('navbar_dropdown_back_color')
                                                ->label('Navbar Dropdown Background Color')
                                                ->columnSpanFull(),
                                                Forms\Components\ColorPicker::make('navbar_icon_color')
    ->label('Menu Icon (Hamburger) Color')
    ->helperText('Change the color of the three-line menu icon on the navbar.')
    ->columnSpanFull(),

                                        ])
                                        ->columns(2)
                                        ->collapsible()
                                        ->collapsed(false),


                                    // 🔘 Primary Button Section
                                    Forms\Components\Section::make('Primary Button')
                                        ->description('Customize colors for the primary buttons across the site.')
                                        ->schema([
                                            Forms\Components\ColorPicker::make('primary_button_color')
                                                ->label('Primary Button Background Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('primary_button_hover_color')
                                                ->label('Primary Button Hover Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('primary_button_text_color')
                                                ->label('Primary Button Text Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('primary_button_text_hover_color')
                                                ->label('Primary Button Text Hover Color')
                                                ->columnSpanFull(),
                                        ])
                                        ->collapsible()
                                        ->collapsed(false)
                                        ->columns(2),
// 🟢 General Colors Section
                                    Forms\Components\Section::make('General Colors')
                                        ->description('Set the main theme colors for your site.')
                                        ->schema([
                                            Forms\Components\ColorPicker::make('primary_color')
                                                ->label('Primary Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('secondary_color')
                                                ->label('Secondary Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('text_color')
                                                ->label('Text Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('accent_color')
                                                ->label('Accent Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('white_color')
                                                ->label('White Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('divider_color')
                                                ->label('Divider Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('dark_divider_color')
                                                ->label('Dark Divider Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('error_color')
                                                ->label('Error Color')
                                                ->columnSpanFull(),

                                                 Forms\Components\ColorPicker::make('social_media_icon_color')
                                                ->label('Social Media Icon Color')
                                                ->columnSpanFull(),
                                                   Forms\Components\ColorPicker::make('social_media_icon_back_color')
                                                ->label('Social Media Icon Background Color')
                                                ->columnSpanFull(),
                                        ])
                                        ->columns(2)
                                        ->collapsible()
                                        ->collapsed(false),

                                    // ⚫ Footer Colors Section
                                    Forms\Components\Section::make('Footer Colors')
                                        ->description('Customize the background and text colors for the website footer.')
                                        ->schema([
                                            Forms\Components\ColorPicker::make('footer_back_color')
                                                ->label('Footer Background Color')
                                                ->columnSpanFull(),

                                            Forms\Components\ColorPicker::make('footer_text_color')
                                                ->label('Footer Text Color')
                                                ->columnSpanFull(),
                                        ])
                                        ->columns(2)
                                        ->collapsible()
                                        ->collapsed(false),

                                    // Optional: show two per row neatly
                                ]),

                            Tab::make('Seo Settings')
                                ->schema([

                                    Section::make('Homepage SEO')
                                        ->schema([
                                            TextInput::make('seo_home_title')
                                                ->label('Meta Title')
                                                ->maxLength(60)
                                                ->placeholder('Enter homepage title for SEO'),
                                            Textarea::make('seo_home_description')
                                                ->label('Meta Description')
                                                ->rows(3)
                                                ->maxLength(160)
                                                ->placeholder('Enter homepage meta description'),
                                            TextInput::make('seo_home_keywords')
                                                ->label('Meta Keywords')
                                                ->placeholder('e.g. healthcare, doctor, clinic'),

                                        ])
                                        ->collapsible()
                                        ->collapsed(false),

                                    Section::make('Blog Page SEO')
                                        ->schema([
                                            TextInput::make('seo_blog_title')
                                                ->label('Meta Title')
                                                ->maxLength(60),
                                            Textarea::make('seo_blog_description')
                                                ->label('Meta Description')
                                                ->rows(3)
                                                ->maxLength(160),
                                            TextInput::make('seo_blog_keywords')
                                                ->label('Meta Keywords'),

                                        ])
                                        ->collapsible()
                                        ->collapsed(false),

                                    Section::make('Service Page SEO')
                                        ->schema([
                                            TextInput::make('seo_service_title')
                                                ->label('Meta Title')
                                                ->maxLength(60),
                                            Textarea::make('seo_service_description')
                                                ->label('Meta Description')
                                                ->rows(3)
                                                ->maxLength(160),
                                            TextInput::make('seo_service_keywords')
                                                ->label('Meta Keywords'),

                                        ])
                                        ->collapsible()
                                        ->collapsed(false),

                                    Section::make('Contact Page SEO')
                                        ->schema([
                                            TextInput::make('seo_contact_title')
                                                ->label('Meta Title')
                                                ->maxLength(60),
                                            Textarea::make('seo_contact_description')
                                                ->label('Meta Description')
                                                ->rows(3)
                                                ->maxLength(160),
                                            TextInput::make('seo_contact_keywords')
                                                ->label('Meta Keywords'),

                                        ])
                                        ->collapsible()
                                        ->collapsed(false),
                                ])

                        ])
                        ->columnSpanFull(),

                ]),
            ]);
    }

//    public static function form(Form $form): Form
//    {
//        return $form
//            ->schema([
//                Forms\Components\Card::make([
//                    Tabs::make('SettingsTabs')
//                        ->tabs([
//                            // Website Settings
//                            Tab::make('Website Settings')
//                                ->schema([
//                                    Forms\Components\TextInput::make('name')
//                                        ->required()
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\Textarea::make('description')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\Textarea::make('google')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\TextInput::make('author')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\Textarea::make('keywords')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\Textarea::make('tags')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\TextInput::make('url')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\FileUpload::make('website_logo')
//                                        ->image()
//                                        ->directory('uploads')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\FileUpload::make('fav_icon')
//                                        ->image()
//                                        ->directory('uploads')
//                                        ->columnSpanFull(),
//
//
//
//                                    Forms\Components\Textarea::make('map')
//                                        ->label('Please Give here your google map link')
//                                        ->columnSpanFull(),
//
//
//
//
//                                    Forms\Components\Textarea::make('contact_spam_keywords')
//                                        ->helperText('Enter as JSON array, e.g. ["spam", "ads"]')
//                                        ->columnSpanFull(),
//                                ]),
//
//                            // Footer Settings
//                            Tab::make('Footer Settings')
//                                ->schema([
//                                    Forms\Components\TextInput::make('footer_heading')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\Textarea::make('footer')
//                                        ->columnSpanFull(),
//                                    Forms\Components\Textarea::make('address')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\TextInput::make('email')
//                                        ->email()
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\TextInput::make('phone')
//                                        ->columnSpanFull(),
//
//                                    Forms\Components\TextInput::make('footer_card_title')
//                                        ->columnSpanFull(),
//                                    Forms\Components\Textarea::make('footer_card_paragraph')
//                                        ->columnSpanFull(),
//
//
//                                    // 👉 You can add new footer fields later here
//                                ]),
//                        ])
//                        ->columnSpanFull(),
//                ]),
//            ]);
//    }
//    public static function form(Form $form): Form
//    {
//        return $form
//            ->schema([
//                Forms\Components\TextInput::make('name')
//                    ->required()
//                    ->columnSpanFull(),
//
//                Forms\Components\Textarea::make('description')
//                    ->columnSpanFull(),
//
//                Forms\Components\Textarea::make('footer')
//                    ->columnSpanFull(),
//
//                Forms\Components\Textarea::make('google')
//                    ->columnSpanFull(),
//
//                Forms\Components\TextInput::make('author')
//                    ->columnSpanFull(),
//
//                Forms\Components\Textarea::make('keywords')
//                    ->columnSpanFull(),
//
//                Forms\Components\Textarea::make('tags')
//                    ->columnSpanFull(),
//
//                Forms\Components\TextInput::make('url')
//                    ->columnSpanFull(),
//
//                Forms\Components\FileUpload::make('website_logo')
//                    ->image()
//                    ->columnSpanFull(),
//
//                Forms\Components\FileUpload::make('fav_icon')
//                    ->image()
//                    ->columnSpanFull(),
//
//                Forms\Components\Textarea::make('address')
//                    ->columnSpanFull(),
//
//                Forms\Components\TextInput::make('email')
//                    ->email()
//                    ->columnSpanFull(),
//
//                Forms\Components\TextInput::make('phone')
//                    ->columnSpanFull(),
//
//                Forms\Components\TextInput::make('linkedin')
//                    ->columnSpanFull(),
//
//                Forms\Components\Textarea::make('contact_spam_keywords')
//                    ->helperText('Enter as JSON array, e.g. ["spam", "ads"]')
//                    ->columnSpanFull(),
//            ]);
//    }


    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('name')->label('Site Name'),
                Tables\Columns\TextColumn::make('email')->label('Email'),
                Tables\Columns\TextColumn::make('phone')->label('Phone'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([]);
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
            'index' => Pages\ListWebsiteSettings::route('/'),
            'edit' => Pages\EditWebsiteSetting::route('/{record}/edit'),
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

    public static function getNavigationSort(): ?int
    {
        return 1;
    }


    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()->where('id', 1);
    }
}

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
                                    TextInput::make('header_title')->columnSpanFull(),
                                    TextInput::make('header_phone_number')
                                        ->label('Hero Section contact number')
                                        ->columnSpanFull(),
                                    TextInput::make('header_title_two')
                                        ->label('Hero Section opening hours')
                                        ->columnSpanFull(),
                                    TextInput::make('header_title_three')
                                        ->label('Hero Section schedule appointment')
                                        ->columnSpanFull(),

                                    Textarea::make('header_small_paragraph')->columnSpanFull(),
                                    //TextInput::make('header_phone_number')->columnSpanFull(),

                                    Section::make('Media')->schema([
                                        FileUpload::make('header_video')
                                            ->label('Hero Section Video')
                                            ->directory('uploads'),
                                    ]),
                                    Repeater::make('hero_features')
                                        ->label('Hero Features')
                                        ->schema([
                                            FileUpload::make('image')->label('Image')->required()->columnSpan(6),
                                            TextInput::make('title')->label('Title')->required()->columnSpan(6),

                                        ])
                                        ->columns(12)
                                        ->columnSpanFull(),
//                                    Repeater::make('header_json_button')
//                                        ->label('Buttons')
//                                        ->createItemButtonLabel('Add More')
//                                        ->schema([
//                                            TextInput::make('text')->label('Button Text')->required()->maxLength(255)->columnSpan(4),
//                                            TextInput::make('url')->label('Button URL')->required()->maxLength(255)->columnSpan(5),
//                                            Select::make('color')->label('Button Color')
//                                                ->options([
//                                                    'blue-500'   => 'Blue',
//                                                    'red-500'    => 'Red',
//                                                    'green-500'  => 'Green',
//                                                    'yellow-500' => 'Yellow',
//                                                    'purple-500' => 'Purple',
//                                                    'gray-500'   => 'Gray',
//                                                    'pink-500'   => 'Pink',
//                                                    'indigo-500' => 'Indigo',
//                                                ])
//                                                ->required()
//                                                ->default('blue-500')
//                                                ->columnSpan(3),
//                                        ])
//                                        ->columns(12)
//                                        ->columnSpanFull(),

                                    TextInput::make('header_button')->label('Button Text')->columnSpanFull(),
                                    Textarea::make('header_button_url')->label('Button URL')->columnSpanFull(),
                                ]),

                            Tab::make('Primary Information')
                                ->schema([
                                    TextInput::make('experience')->label('Experience Year')->columnSpanFull(),
                                    TextInput::make('patients')->label('Total Patients')->columnSpanFull(),
                                    TextInput::make('treatment')->label('Total Treatment')->columnSpanFull(),
                                    TextInput::make('total_review')->label('Total Review')->columnSpanFull(),
                                    Repeater::make('working_hours')
                                        ->label('Working Hours')
                                        ->schema([
                                            TextInput::make('day')->label('Day')->required()->columnSpan(6),
                                            TextInput::make('hours')->label('Hours')->required()->columnSpan(6),

                                        ])
                                        ->columns(12)
                                        ->columnSpanFull(),
                                    TextInput::make('facebook')->label('facebook link')->columnSpanFull(),
                                    TextInput::make('whatsapp')->label('whatsapp link')->columnSpanFull(),
                                    TextInput::make('youtube')->label('youtube link')->columnSpanFull(),
                                    TextInput::make('instagram')->label('instagram link')->columnSpanFull(),
                                    TextInput::make('tiktok')->label('tiktok link')->columnSpanFull(),
                                    TextInput::make('telegram')->label('telegram link')->columnSpanFull(),
                                    TextInput::make('snapchat')->label('snapchat link')->columnSpanFull(),
                                    TextInput::make('pinterest')->label('pinterest link')->columnSpanFull(),
                                ]),

                            Tab::make('About Section')
                                ->schema([
                                    TextInput::make('about_title')->columnSpanFull(),
                                    Textarea::make('about_description')->columnSpanFull(),
                                    TextInput::make('about_button')->columnSpanFull(),
                                    Textarea::make('about_button_url')->columnSpanFull(),
                                    FileUpload::make('about_image')->image()->directory('uploads')->imageEditor()->columnSpanFull(),
                                    Repeater::make('about_us_list')
                                        ->label('About us List')
                                        ->createItemButtonLabel('Add More')
                                        ->schema([
                                            TextInput::make('list')->label('List Text')->required()->columnSpanFull(),

                                        ])
                                        ->columns(12)
                                        ->columnSpanFull(),
                                    Forms\Components\Toggle::make('about_status')->columnSpanFull(),
                                ]),
                            Tab::make('Service ')
                                ->schema([
                                    TextInput::make('service_title')->columnSpanFull(),
                                    TextInput::make('service_header')->columnSpanFull(),
                                    Textarea::make('service_paragraph')->columnSpanFull(),
                                    Forms\Components\Toggle::make('service_status')->columnSpanFull(),
                                ]),
                            Tab::make('Our Process')
                                ->schema([
                                    TextInput::make('process_title')->columnSpanFull(),
                                    Textarea::make('process_header')->columnSpanFull(),
                                    TextInput::make('process_paragraph')->columnSpanFull(),
                                    Textarea::make('process_button')->columnSpanFull(),
                                    Textarea::make('process_button_url')->columnSpanFull(),
                                    Repeater::make('process_step')
                                        ->label('Process Step')
                                        ->createItemButtonLabel('Add More')
                                        ->schema([
                                            TextInput::make('title')->label('Step Title')->required()->columnSpanFull(),
                                            Textarea::make('paragraph')->label('Short paragraph')->required()->columnSpanFull(),
                                            FileUpload::make('icon')->image()->directory('uploads')->imageEditor()->columnSpanFull(),
                                        ])
                                        ->columns(12)
                                        ->columnSpanFull(),
                                    Forms\Components\Toggle::make('process_status')->columnSpanFull(),
                                ]),


                            Tab::make('Choose Us')
                                ->schema([
                                    TextInput::make('choose_title')->columnSpanFull(),
                                    Textarea::make('choose_header')->columnSpanFull(),
                                    Textarea::make('choose_paragraph')->columnSpanFull(),
                                    Repeater::make('choose_options')
                                        ->label('Choose Us Step')
                                        ->createItemButtonLabel('Add More')
                                        ->schema([
                                            TextInput::make('title')->label(' Title')->required()->columnSpanFull(),
                                            Textarea::make('paragraph')->label('Short paragraph')->required()->columnSpanFull(),
                                            FileUpload::make('icon')->image()->directory('uploads')->imageEditor()->columnSpanFull(),
                                        ])
                                        ->columns(12)
                                        ->columnSpanFull(),
                                    Forms\Components\Toggle::make('choose_status')->columnSpanFull(),
                                ]),

                            Tab::make('Testimonials')
                                ->schema([
                                    TextInput::make('testimonials_title')->columnSpanFull(),
                                    TextInput::make('testimonials_header')->columnSpanFull(),
                                    Textarea::make('testimonials_paragraph')->columnSpanFull(),
                                    Forms\Components\Toggle::make('testimonials_status')->columnSpanFull(),
                                ]),


                            Tab::make('What We Provide')
                                ->schema([
                                    TextInput::make('provide_title')->columnSpanFull(),
                                    Textarea::make('provide_header')->columnSpanFull(),
                                    Textarea::make('provide_paragraph')->columnSpanFull(),
                                    Textarea::make('provide_video_link')->columnSpanFull(),
                                    Forms\Components\Toggle::make('provide_status')->columnSpanFull(),
                                    Repeater::make('provide_options')
                                        ->label('Provide Step')
                                        ->createItemButtonLabel('Add More')
                                        ->schema([
                                            TextInput::make('title')->label(' Title')->required()->columnSpanFull(),
                                            Textarea::make('paragraph')->label('Short paragraph')->required()->columnSpanFull(),
                                        ])
                                        ->columns(12)
                                        ->columnSpanFull(),
                                ]),


                            Tab::make('Our Team')
                                ->schema([
                                    TextInput::make('team_title')->columnSpanFull(),
                                    TextInput::make('team_header')->columnSpanFull(),
                                    Textarea::make('team_paragraph')->columnSpanFull(),
                                    Forms\Components\Toggle::make('team_status')->columnSpanFull(),
                                ]),

                            Tab::make('Contact Us')
                                ->schema([
                                    TextInput::make('contact_title')->columnSpanFull(),
                                    TextInput::make('contact_header')->columnSpanFull(),
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

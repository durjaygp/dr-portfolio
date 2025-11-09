<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PageSectionResource\Pages;
use App\Filament\Resources\PageSectionResource\RelationManagers;
use App\Models\PageSection;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextInputColumn;
use Filament\Notifications\Notification;
class PageSectionResource extends Resource
{
    protected static ?string $model = PageSection::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('title')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('sub_title')
                    ->maxLength(255),
                Forms\Components\RichEditor::make('description')
                    ->columnSpanFull()
                    ->fileAttachmentsDisk('uploads') // use your custom disk
                    ->fileAttachmentsDirectory('') // no subfolder, saves directly inside /public/uploads
                    ->fileAttachmentsVisibility('public'),

                Forms\Components\FileUpload::make('image')
                    ->image()
                    ->disk('uploads') // use your custom disk from config/filesystems.php
                    ->directory('')   // saves directly into public/uploads/
                    ->visibility('public'),

              //  Forms\Components\Op::make('image_align'),
              //  use Filament\Forms\Components\ToggleButtons;

                  Forms\Components\Select::make('image_align')
                      ->options([
                          '1'  => 'Left',
                          '2'  => 'Right',
                      ]),
                Forms\Components\TextInput::make('button_label')
                    ->maxLength(255),
                Forms\Components\Textarea::make('button_link')
                    ->columnSpanFull(),
                Forms\Components\Toggle::make('status')
                    ->required(),
                Forms\Components\Toggle::make('homepage_featured')
                    ->required(),
                Forms\Components\TextInput::make('sort_by')
                    ->numeric()
                    ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')
                    ->searchable(),
                Tables\Columns\ImageColumn::make('image')
                ->disk('uploads'),

                Tables\Columns\ToggleColumn::make('status'),
                Tables\Columns\ToggleColumn::make('homepage_featured'),
                TextInputColumn::make('sort_by')
                    ->label('Order')
                    ->rules(['required', 'integer', 'min:0'])
                    ->extraInputAttributes([
                        'inputmode' => 'numeric',
                        'pattern' => '\d*',
                    ])
                    ->sortable()
                    ->updateStateUsing(fn ($record, $state) => $record->update([
                        'sort_by' => (int) $state,
                    ]))
                    ->afterStateUpdated(function ($record, $state) {
                        Notification::make()
                            ->title('Order updated')
                            ->success()
                            ->send();
                    }),
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
            'index' => Pages\ListPageSections::route('/'),
            'create' => Pages\CreatePageSection::route('/create'),
            'edit' => Pages\EditPageSection::route('/{record}/edit'),
        ];
    }
}

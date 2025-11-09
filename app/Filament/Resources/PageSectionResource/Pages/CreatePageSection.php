<?php

namespace App\Filament\Resources\PageSectionResource\Pages;

use App\Filament\Resources\PageSectionResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreatePageSection extends CreateRecord
{
    protected static string $resource = PageSectionResource::class;
    protected static bool $canCreateAnother = false;

    //customize redirect after create
    public function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}

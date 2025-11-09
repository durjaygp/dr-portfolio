<?php

namespace App\Livewire\Pages;

use App\Models\PageSection;
use App\Models\Pages as ModelsPages;
use Livewire\Component;

class PageDetails extends Component
{
    public function render()
    {
        $page = ModelsPages::where('slug', request()->route('slug'))->firstOrFail();

        // It's already an array (from $casts)
        $sectionData = $page->components ?? [];

        $pagesections = collect($sectionData)
            ->map(function ($item) {
                $section = PageSection::find($item['type']);
                if ($section) {
                    $section->custom_sort = $item['sort_by'] ?? 0; // safe access
                }
                return $section;
            })
            ->filter()
            ->sortBy('custom_sort')
            ->values();

        return view('livewire.pages.page-details', compact('page', 'pagesections'))
            ->layout('layouts.app');
    }
}

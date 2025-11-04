<?php

namespace App\Livewire\Pages;

use App\Models\CustomReview;
use App\Models\HomepageSetting;
use Livewire\Component;

class Service extends Component
{
    public function render()
    {
        $services = \App\Models\Service::whereStatus(1)
            ->orderBy('name', 'asc')
            ->get();
        $reviews = CustomReview::latest()->whereStatus(1)->take(15)->get();
        return view('livewire.pages.service',compact('services','reviews'))
            ->layout('layouts.app');
    }
}

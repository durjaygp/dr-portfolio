<?php

namespace App\Livewire\Components;

use App\Models\HomepageSetting;
use App\Models\WebsiteSetting;
use Livewire\Component;

class ServiceSidebar extends Component
{
    public function render()
    {
        $services = \App\Models\Service::select(['name','slug'])->latest()->whereStatus(1)->get();


        return view('livewire.components.service-sidebar',compact('services'))->layout('layouts.app');
    }
}

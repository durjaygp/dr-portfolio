<?php
namespace App\Livewire\Pages;

use Livewire\Component;
use App\Models\Service;

class ServiceDetails extends Component
{

    public function render()
    {
        $service = \App\Models\Service::where('slug', request()->route('slug'))->firstOrFail();
        return view('livewire.pages.service-details',compact('service'))->layout('layouts.app');
    }
}

<?php

namespace App\Livewire\Components;

use App\Models\HomepageSetting;
use App\Models\Pages;
use App\Models\WebsiteSetting;
use Livewire\Component;

class Footer extends Component
{
    // Inside your NavMenu Livewire component
    public function goToPage($page)
    {
        $this->emit('navigate', $page);
    }

    public function render()
    {
        $pages = Pages::where('status', 1)->get();
        return view('livewire.components.footer',compact('pages'))->layout('layouts.app');
    }
}

<?php

namespace App\Livewire\Pages;

use App\Models\CustomReview;
use App\Models\Doctor;
use App\Models\HomepageSetting;
use App\Models\WebsiteSetting;
use Livewire\Component;

class AboutUs extends Component
{
    public function render()
    {
        $reviews = CustomReview::latest()->whereStatus(1)->take(15)->get();
        $doctors = Doctor::whereStatus(1)->take(8)->get();
        return view('livewire.pages.about-us',compact('doctors','reviews'))->layout('layouts.app');
    }
}

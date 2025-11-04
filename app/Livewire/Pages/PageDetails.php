<?php

namespace App\Livewire\Pages;

use App\Models\CustomReview;
use App\Models\Doctor;
use App\Models\Faq;
use Livewire\Component;
use App\Models\Pages as ModelsPages;

class PageDetails extends Component
{
    public function render()
    {
        $page = ModelsPages::where('slug', request()->route('slug'))->firstOrFail();
        $services = \App\Models\Service::whereStatus(1)->orderBy('name', 'asc')->take(8)->get();
        $faqs = Faq::whereStatus(1)->get();
        $reviews = CustomReview::latest()->whereStatus(1)->take(15)->get();
        $doctors = Doctor::whereStatus(1)->take(8)->get();
        return view('livewire.pages.page-details',compact('page','services','reviews','faqs','doctors'))->layout('layouts.app');
    }
}

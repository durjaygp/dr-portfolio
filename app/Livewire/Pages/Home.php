<?php

namespace App\Livewire\Pages;

use App\Models\Blog;
use App\Models\Category;
use App\Models\CustomReview;
use App\Models\Doctor;
use App\Models\Faq;
use App\Models\HomepageSetting;
use App\Models\WebsiteSetting;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        $services = \App\Models\Service::whereStatus(1)->orderBy('name', 'asc')->take(8)->get();
     //   $faqs = Faq::whereStatus(1)->get();
        $reviews = CustomReview::latest()->whereStatus(1)->take(15)->get();
        $doctors = Doctor::whereStatus(1)->take(8)->get();
   //     $blogs = Blog::latest()->whereStatus(1)->take(4)->get();
        return view('livewire.pages.home', compact('services','reviews','doctors'))
            ->layout('layouts.app');
    }

}

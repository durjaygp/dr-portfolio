<?php

namespace App\Livewire\Pages;

use App\Models\Blog;
use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        $pagesections = \App\Models\PageSection::whereStatus(1)
            ->orderBy('sort_by', 'asc')
            ->where('homepage_featured', 1)
            ->get();
        $blogs = Blog::whereStatus(1)->latest()->take(3)->get();

        return view('livewire.pages.home', compact('pagesections','blogs'))
            ->layout('layouts.app');
    }

}

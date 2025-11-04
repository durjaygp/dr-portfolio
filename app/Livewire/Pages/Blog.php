<?php

namespace App\Livewire\Pages;

use Livewire\Component;

class Blog extends Component
{
    public function render()
    {
        $blogs = \App\Models\Blog::latest()->whereStatus(1)->paginate(12);
        return view('livewire.pages.blog',compact('blogs'))->layout('layouts.app');
    }
}

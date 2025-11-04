<?php

namespace App\Livewire\Pages;

use Livewire\Component;
use App\Models\Blog;

class BlogDetails extends Component
{
    public function render()
    {
        $blog = Blog::where('slug', request()->route('slug'))->firstOrFail();
        return view('livewire.pages.blog-details',compact('blog'))->layout('layouts.app');
    }
}

<?php

namespace App\Livewire\Pages;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Blog;
use App\Models\BlogCategory;

class BlogList extends Component
{
    use WithPagination;

    public $category_id = null;
    public $search = '';

    protected $queryString = ['category_id', 'search'];

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function updatingCategoryId()
    {
        $this->resetPage();
    }

    public function render()
    {
        $query = Blog::whereStatus(1);

        if ($this->category_id) {
            $query->where('category_id', $this->category_id);
        }

        if ($this->search) {
            $query->where('name', 'like', '%' . $this->search . '%');
        }

        $blogs = $query->latest()->paginate(6);
        $categories = BlogCategory::whereStatus(1)->get();
        $recentBlogs = Blog::whereStatus(1)->latest()->take(5)->get();

        return view('livewire.pages.blog-list', compact('blogs', 'categories', 'recentBlogs'))
            ->layout('layouts.app');
    }
}

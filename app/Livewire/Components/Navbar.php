<?php
//
//namespace App\Livewire\Components;
//
//use App\Models\Category;
//use App\Models\Menu;
//use App\Models\Pages;
//use App\Models\Service;
//use App\Models\WebsiteSetting;
//use Livewire\Component;
//
//class Navbar extends Component
//{
//    // Inside your NavMenu Livewire component
//    public function goToPage($page)
//    {
//        $this->emit('navigate', $page);
//    }
//
////    public function render()
////    {
////
////
////        // ✅ Eager load children menus (and nested children if needed)
////        $menus = \App\Models\Menu::with('children')
////            ->where('status', 1)
////            ->whereNull('parent_id')
////            ->orderBy('order')
////            ->get();
////
////        return view('livewire.components.navbar', compact( 'menus'))
////            ->layout('layouts.app');
////    }
//    public function render()
//    {
//        // Get all data in just 3 queries
//        $menus = Menu::with([
//            'children',
//            'children.referencedServices',
//            'children.referencedPages',
//            'referencedServices',
//            'referencedPages'
//        ])
//            ->where('status', 1)
//            ->whereNull('parent_id')
//            ->orderBy('order')
//            ->get();
//
//        // Preload ALL services and pages for quick access
//        $allServices = Service::where('status', 1)->get()->keyBy('id');
//        $allPages = Pages::where('status', 1)->get()->keyBy('id');
//
//        return view('livewire.components.navbar', [
//            'menus' => $menus,
//            'allServices' => $allServices,
//            'allPages' => $allPages
//        ])->layout('layouts.app');
//    }
//
//}


namespace App\Livewire\Components;

use App\Models\PageSection;
use Illuminate\Support\Facades\Cache;
use Livewire\Component;
use App\Models\Menu;
use App\Models\Service;
use App\Models\Pages;

class Navbar extends Component
{
    public function render()
    {
        $pagesections = \App\Models\PageSection::whereStatus(1)
            ->orderBy('sort_by', 'asc')
            ->where('homepage_featured', 1)
            ->get();

        return view('livewire.components.navbar', compact('pagesections'))
            ->layout('layouts.app');
    }
}

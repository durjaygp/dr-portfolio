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

use Illuminate\Support\Facades\Cache;
use Livewire\Component;
use App\Models\Menu;
use App\Models\Service;
use App\Models\Pages;

class Navbar extends Component
{
    public function render()
    {
        // Cache for 1 hour (3600 seconds)
        $navigationData = Cache::remember('navbar_data', 3600, function () {
            $menus = Menu::with(['children'])
                ->where('status', 1)
                ->whereNull('parent_id')
                ->orderBy('order')
                ->get();

            $serviceIds = $this->extractReferenceIds($menus, 'service');
            $pageIds = $this->extractReferenceIds($menus, 'page');

            $allServices = Service::whereIn('id', $serviceIds)->get()->keyBy('id');
            $allPages = Pages::whereIn('id', $pageIds)->get()->keyBy('id');

            return [
                'menus' => $menus,
                'allServices' => $allServices,
                'allPages' => $allPages
            ];
        });

        return view('livewire.components.navbar', $navigationData)
            ->layout('layouts.app');
    }

    /**
     * Extract all reference IDs from menus and children
     */
    private function extractReferenceIds($menus, $type): array
    {
        $ids = [];

        foreach ($menus as $menu) {
            // Get IDs from parent menu
            if ($menu->type === $type && !empty($menu->reference_ids)) {
                $ids = array_merge($ids, $menu->reference_ids);
            }

            // Get IDs from children menus
            foreach ($menu->children as $child) {
                if ($child->type === $type && !empty($child->reference_ids)) {
                    $ids = array_merge($ids, $child->reference_ids);
                }
            }
        }

        return array_unique($ids);
    }

    /**
     * Get URL for a menu item
     */
    public function getMenuUrl($menu, $allServices, $allPages): string
    {
        switch ($menu->type) {
            case 'custom':
                return $menu->url;

            case 'page':
                if (!empty($menu->reference_ids)) {
                    $pageId = $menu->reference_ids[0];
                    $page = $allPages[$pageId] ?? null;
                    return $page ? url('/' . $page->slug) : '#';
                }
                break;

            case 'service':
                if (!empty($menu->reference_ids)) {
                    $serviceId = $menu->reference_ids[0];
                    $service = $allServices[$serviceId] ?? null;
                    return $service ? url('/service/' . $service->slug) : '#';
                }
                break;
        }

        return '#';
    }

    /**
     * Check if menu should be a dropdown
     */
    public function isMenuDropdown($menu): bool
    {
        $hasChildren = $menu->children->isNotEmpty();
        $hasReferences = !empty($menu->reference_ids) && count($menu->reference_ids) > 0;

        if ($menu->type === 'page') {
            return $hasChildren || (count($menu->reference_ids) > 1);
        }

        return $hasChildren || $hasReferences;
    }
}

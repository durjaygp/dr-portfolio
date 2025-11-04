<div>
    @if ($page === 'home')
        <livewire:pages.home />
{{--    @elseif ($page === 'recipe-details' && $slug)--}}
{{--        <livewire:pages.recipe-details :slug="$slug" />--}}
    @elseif ($page === 'service')
        <livewire:pages.service />
    @elseif ($page === 'service-details' && $slug)
        <livewire:pages.recipe-details :slug="$slug" />

    @endif
</div>

<div>
    <footer class="bg-gray-800 text-white py-8">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-sm">
            <p>{{ $setting->footer }}</p>

            <p class="mt-2">
                <a href="#home" class="nav-link hover:text-accent mx-2">Home</a> |
                @foreach($pages as $row)
                    <a href="{{ route('page-details', $row->slug) }}" class="nav-link hover:text-accent mx-2">{{ $row->title }}</a> |
                @endforeach
            </p>

            <p class="mt-4 text-gray-400">
                Made with
                <span class="text-red-500">❤️</span>
                and designed by
                <a href="https://www.fiverr.com/durjaygp" target="_blank" class="text-accent hover:underline font-semibold">
                    Durjay Ghosh
                </a>
            </p>
        </div>
    </footer>
</div>

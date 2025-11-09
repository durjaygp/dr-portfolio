@section('title')
Blog
@endsection
<div>
    <section class="py-16 sm:py-24 bg-gray-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <h1 class="text-3xl sm:text-4xl md:text-5xl font-playfair font-bold text-primary mb-10 text-center">
                Latest Insights & Publications
            </h1>

            <div class="grid grid-cols-1 lg:grid-cols-4 gap-10">
                <!-- Left: Blog Posts -->
                <div class="lg:col-span-3 space-y-10">

                    <!-- Search + Filter -->
                    <div class="bg-white rounded-xl shadow-md p-4 flex flex-col sm:flex-row gap-4 items-stretch sm:items-center justify-between">
                        <input
                            type="text"
                            wire:model.debounce.400ms="search"
                            placeholder="Search blog posts..."
                            class="flex-1 border border-gray-300 rounded-md shadow-sm focus:ring-accent focus:border-accent px-3 py-2 text-sm"
                        >
                        <select
                            wire:model="category_id"
                            class="w-full sm:w-1/3 border border-gray-300 rounded-md shadow-sm focus:ring-accent focus:border-accent px-3 py-2 text-sm">
                            <option value="">All Categories</option>
                            @foreach($categories as $category)
                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <!-- Blog Grid -->
                    <div class="grid sm:grid-cols-2 xl:grid-cols-3 gap-6">
                        @forelse($blogs as $blog)
                            <article class="bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-xl transition-all duration-300 flex flex-col">
                                <a href="{{ route('blog.details', $blog->slug ?? $blog->id) }}" class="block relative">
                                    <img src="{{ asset($blog->image) }}" alt="{{ $blog->name }}"
                                         class="w-full h-56 object-cover transition-transform duration-500 hover:scale-105">
                                    <div class="absolute inset-0 bg-gradient-to-t from-black/30 to-transparent opacity-0 hover:opacity-100 transition"></div>
                                </a>
                                <div class="flex flex-col justify-between flex-grow p-5">
                                    <div>
                                        <span class="text-xs font-semibold uppercase tracking-wide text-accent">
                                            {{ $blog->category->name ?? 'Uncategorized' }}
                                        </span>
                                        <h2 class="text-lg sm:text-xl font-playfair font-bold text-primary mt-2 mb-2 leading-snug hover:text-accent transition">
                                            <a href="{{ route('blog.details', $blog->slug ?? $blog->id) }}">{{ $blog->name }}</a>
                                        </h2>
                                        <p class="text-gray-600 text-sm mb-4 leading-relaxed">
                                            {{ \Illuminate\Support\Str::limit(strip_tags($blog->description), 120) }}
                                        </p>
                                    </div>
                                    <div class="flex items-center justify-between text-xs text-gray-500 mt-auto border-t pt-3">
                                        <span>{{ $blog->author ?? 'Admin' }}</span>
                                        <time datetime="{{ $blog->created_at }}">{{ $blog->created_at->format('M d, Y') }}</time>
                                    </div>
                                </div>
                            </article>
                        @empty
                            <p class="text-gray-600 text-center py-10 col-span-full">No blog posts found.</p>
                        @endforelse
                    </div>

                    <!-- Pagination -->
                    <div class="pt-6 text-center">
                        {{ $blogs->links() }}
                    </div>
                </div>

                <!-- Right: Sidebar -->
                <aside class="lg:col-span-1 space-y-8 lg:sticky lg:top-24 self-start">

                    <!-- Categories -->
                    <div class="bg-white p-6 rounded-xl shadow-md border-t-4 border-primary">
                        <h4 class="text-xl font-playfair font-bold text-primary mb-4">Categories</h4>
                        <ul class="space-y-3 text-gray-700">
                            <li>
                                <button wire:click="$set('category_id', null)"
                                        class="hover:text-accent transition {{ $category_id === null ? 'text-accent font-semibold' : '' }}">
                                    All
                                </button>
                            </li>
                            @foreach($categories as $category)
                                <li>
                                    <button wire:click="$set('category_id', {{ $category->id }})"
                                            class="hover:text-accent transition {{ $category_id == $category->id ? 'text-accent font-semibold' : '' }}">
                                        {{ $category->name }}
                                    </button>
                                </li>
                            @endforeach
                        </ul>
                    </div>

                    <!-- Recent Posts -->
                    <div class="bg-white p-6 rounded-xl shadow-md border-t-4 border-accent">
                        <h4 class="text-xl font-playfair font-bold text-primary mb-4">Recent Posts</h4>
                        <ul class="space-y-4">
                            @foreach($recentBlogs as $recent)
                                <li class="border-b pb-3 border-gray-100 last:border-b-0 last:pb-0">
                                    <a href="{{ route('blog.details', $recent->slug ?? $recent->id) }}"
                                       class="text-sm font-semibold text-gray-700 hover:text-accent transition block">
                                        {{ $recent->name }}
                                    </a>
                                    <span class="text-xs text-gray-500">{{ $recent->created_at->diffForHumans() }}</span>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </section>
</div>

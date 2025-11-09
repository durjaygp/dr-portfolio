@section('title')
    {{$blog->name}}
@endsection
<div>
    <section class="py-12 sm:py-20">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">

            <div class="text-center mb-10">
            <span class="text-sm font-semibold uppercase tracking-widest text-accent">
                {{ $blog->category->name ?? 'Uncategorized' }}
            </span>
                <h1 class="text-4xl sm:text-5xl font-playfair font-bold text-primary mt-3 mb-4 leading-tight">
                    {{ $blog->name }}
                </h1>
                <div class="flex justify-center items-center text-sm text-gray-500">
                    <img src="{{ $blog->user->profile_photo_url ?? 'https://via.placeholder.com/40' }}" alt="Author Photo" class="w-8 h-8 rounded-full mr-3 object-cover">
                    <span class="mr-3">{{ $blog->user->name ?? 'Anonymous' }}</span>
                    <span>&bull;</span>
                    <time class="ml-3" datetime="{{ $blog->created_at->format('Y-m-d') }}">
                        {{ $blog->created_at->format('F d, Y') }}
                    </time>
                </div>
            </div>

            @if($blog->image)
                <figure class="mb-10 rounded-xl overflow-hidden shadow-2xl">
                    <img class="w-full h-auto object-cover" src="{{ asset($blog->image) }}" alt="{{ $blog->name }}">
                    @if($blog->description)
                        <figcaption class="text-sm text-gray-500 p-2 text-center bg-gray-50">{{ $blog->description }}</figcaption>
                    @endif
                </figure>
            @endif

            <div class="article-content text-gray-700 text-lg">
                {!! $blog->main_content !!}
            </div>

            <div class="mt-16 p-6 sm:p-8 bg-primary/5 rounded-xl border border-gray-200 flex flex-col sm:flex-row items-center">
                <img src="{{ $blog->user->profile_photo_url ?? 'https://via.placeholder.com/80' }}" alt="{{ $blog->user->name ?? 'Author' }}" class="w-20 h-20 rounded-full object-cover mb-4 sm:mb-0 sm:mr-6">
                <div class="text-center sm:text-left">
                    <h4 class="text-xl font-playfair font-bold text-primary">Written by {{ $blog->user->name ?? 'Anonymous' }}</h4>
                    <p class="text-sm text-gray-600 mt-1">
                        {{ $blog->user->bio ?? 'Author biography is not available.' }}
                    </p>
                </div>
            </div>

        </div>
    </section>
</div>

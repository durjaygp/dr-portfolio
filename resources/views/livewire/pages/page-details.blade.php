@section('title', $page->meta_title)

@section('meta_tags')
    @php
        $metaTitle = $page->meta_title ?? $page->title;
        $metaDescription = strip_tags(Str::limit($page->meta_description ?? $page->description, 160));
        $metaKeywords = $page->meta_keywords ?? '';
        $metaImage = asset('storage/app/public/' . $page->image);
        $canonicalUrl = url()->current();
    @endphp

        <!-- Primary Meta Tags -->
    <meta name="title" content="{{ $metaTitle }}">
    <meta name="description" content="{{ $metaDescription }}">
    <meta name="keywords" content="{{ $metaKeywords }}">
    <meta name="author" content="{{ $setting->name }}">
    <meta name="robots" content="{{ $page->status ? 'index, follow' : 'noindex, nofollow' }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="{{ $canonicalUrl }}">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="article">
    <meta property="og:site_name" content="{{ $setting->name }}">
    <meta property="og:url" content="{{ $canonicalUrl }}">
    <meta property="og:title" content="{{ $metaTitle }}">
    <meta property="og:description" content="{{ $metaDescription }}">
    <meta property="og:image" content="{{ $metaImage }}">
    <meta property="og:locale" content="en_US">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@{{ $setting->name }}">
    <meta name="twitter:title" content="{{ $metaTitle }}">
    <meta name="twitter:description" content="{{ $metaDescription }}">
    <meta name="twitter:image" content="{{ $metaImage }}">

    <!-- Schema.org JSON-LD (Dynamic Page / Article / Service) -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "{{ $page->is_featured ? 'Service' : 'WebPage' }}",
            "name": "{{ $metaTitle }}",
            "description": "{{ $metaDescription }}",
            "image": "{{ $metaImage }}",
            "url": "{{ $canonicalUrl }}",
            "publisher": {
                "@type": "Organization",
                "name": "{{ $setting->name }}",
                "url": "{{ url('/') }}"
            },
            "mainEntityOfPage": {
                "@type": "WebPage",
                "@id": "{{ $canonicalUrl }}"
            }
        }
    </script>
@endsection


<div>

    <section class="py-12 sm:py-20">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">

            <div class="text-center mb-10">
                <h1 class="text-4xl sm:text-5xl font-playfair font-bold text-primary mt-3 mb-4 leading-tight">
                    {{ $page->title }}
                </h1>
            </div>

            @if($page->image)
                <figure class="mb-10 rounded-xl overflow-hidden shadow-2xl">
                    <img class="w-full h-auto object-cover" src="{{ asset($page->image) }}" alt="{{ $page->title }}">
                    @if($page->description)
                        <figcaption class="text-sm text-gray-500 p-2 text-center bg-gray-50">{{ $page->description }}</figcaption>
                    @endif
                </figure>
            @endif

            <div class="article-content text-gray-700 text-lg">
                {!! $page->main_content !!}
            </div>

        </div>
    </section>
    @foreach($pagesections as $index => $row)
        @php
            $bgColor = $index % 2 === 0 ? 'bg-white' : 'bg-gray-50';
            $isImageLeft = $row->image_align == 1;
            $sectionId = Str::slug($row->title, '-');
        @endphp

        <section id="{{ $sectionId }}" class="py-20 {{ $bgColor }}">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="text-center mb-14">
                    <h2 class="text-4xl sm:text-5xl font-extrabold text-primary mb-4">{{ $row->title }}</h2>
                    @if(!empty($row->sub_title))
                        <p class="text-lg sm:text-xl text-gray-600">{{ $row->sub_title }}</p>
                    @endif
                </div>

                <div class="text-gray-800 leading-relaxed text-[1.1rem] sm:text-lg md:text-[1.125rem] font-normal max-w-none">
                    @if(!empty($row->image))
                        <img
                            src="{{ asset('uploads/' . $row->image) }}"
                            alt="{{ $row->title }}"
                            class="rounded-xl shadow-2xl mb-6 w-full sm:w-1/2 md:w-2/5 lg:w-[38%]
                        {{ $isImageLeft ? 'float-left mr-6 sm:mr-10' : 'float-right ml-6 sm:ml-10' }}"
                        >
                    @endif

                    {!! $row->description !!}

                    @if(!empty($row->button_label) && !empty($row->button_link))
                        <div class="mt-8 clear-both text-center">
                            <a href="{{ $row->button_link }}" target="_blank"
                               class="inline-block px-8 py-3 text-lg font-semibold bg-primary text-white rounded-lg shadow hover:bg-primary/90 transition">
                                {{ $row->button_label }}
                            </a>
                        </div>
                    @endif

                    <div class="clear-both"></div>
                </div>
            </div>
        </section>
    @endforeach


</div>

@section('title')
    {{ $setting->name ?? 'Home' }}
@endsection

@section('meta_tags')

    <meta name="description" content="{{ $setting->seo_home_description ?? $setting->description }}">
    <meta name="keywords" content="{{ $setting->seo_home_keywords ?? $setting->keywords }}">
    <meta name="author" content="{{ $setting->name ?? config('app.name') }}">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:title" content="{{ $setting->seo_home_title ?? $setting->name }}">
    <meta property="og:description" content="{{ $setting->seo_home_description ?? $setting->description }}">
    <meta property="og:image" content="{{ asset('storage/app/public/' . $setting->website_logo) }}">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:url" content="{{ url()->current() }}">
    <meta name="twitter:title" content="{{ $setting->seo_home_title ?? $setting->name }}">
    <meta name="twitter:description" content="{{ $setting->seo_home_description ?? $setting->description }}">
    <meta name="twitter:image" content="{{ asset('storage/app/public/' . $setting->website_logo) }}">

    <!-- Additional SEO tags -->
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="{{ url()->current() }}">

@endsection

<div>


        <section id="home" class="relative bg-primary text-white py-20 md:py-32 overflow-hidden">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 grid md:grid-cols-2 gap-12 items-center">
                <div class="space-y-6">
                    <h1 class="text-4xl sm:text-5xl lg:text-6xl font-extrabold leading-tight">
                        {{$homepage->header_title}}
                    </h1>
                    <p class="text-2xl font-light text-accent italic">
                        {{$homepage->designation}}
                    </p>
                    <p class="text-lg">
                        {!! $homepage->header_small_paragraph !!}
                    </p>
                    @if($homepage->header_button)
                        <div class="pt-4">
                            <a href="{{$homepage->header_button_url}}" class="nav-link inline-block bg-accent hover:bg-opacity-90 text-primary font-bold py-3 px-8 rounded-full shadow-lg transition duration-300">
                                {!! $homepage->header_button !!}
                            </a>
                        </div>
                    @endif

                </div>
                <div class="md:justify-self-end w-full max-w-sm mx-auto md:max-w-full">
                    <img src="{{asset('uploads/'.$homepage->header_image)}}" alt="{{$homepage->header_title}}" class="rounded-lg shadow-2xl object-cover w-full h-auto">
                </div>
            </div>
            <div class="absolute inset-0 bg-black opacity-10"></div>
        </section>

     
    @foreach($pagesections as $index => $row)
        @php
            // Background color based on even/odd
            $bgColor = $index % 2 === 0 ? 'bg-white' : 'bg-gray-50';

            // Image alignment: 1 = Left, 2 = Right
            $isImageLeft = $row->image_align == 1;

            // Safe section ID
            $sectionId = Str::slug($row->title, '-');
        @endphp

        <section id="{{ $sectionId }}" class="py-20 {{ $bgColor }}">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                {{-- Title & Subtitle --}}
                <div class="text-center mb-14">
                    <h2 class="text-4xl sm:text-5xl font-extrabold text-primary mb-4">{{ $row->title }}</h2>
                    @if(!empty($row->sub_title))
                        <p class="text-lg sm:text-xl text-gray-600">{{ $row->sub_title }}</p>
                    @endif
                </div>

                {{-- Description with Floating Image --}}
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

                    {{-- Optional Button --}}
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








    @if($homepage->blog_status == 1)
        <section id="blog" class="py-20 bg-gray-50 relative overflow-hidden">
        <div class="absolute top-0 right-0 w-64 h-64 bg-teal-100 rounded-full blur-3xl opacity-40 transform translate-x-1/3 -translate-y-1/3"></div>
        <div class="absolute bottom-0 left-0 w-72 h-72 bg-navy-100 rounded-full blur-3xl opacity-30 transform -translate-x-1/3 translate-y-1/3"></div>

        <div class="max-w-7xl mx-auto px-6 lg:px-8 relative z-10">
            <!-- Section Header -->
            <div class="text-center mb-14">
                <h2 class="text-4xl md:text-5xl font-playfair font-bold text-navy mb-4">
                    {{$homepage->blog_title}}
                </h2>
                <p class="text-lg text-gray-600 max-w-2xl mx-auto">
                    {{$homepage->blog_paragraph}}
                </p>
            </div>

            <!-- Blog Grid -->
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
                @foreach($blogs as $row)
                    <a href="{{ route('blog.details', $row->slug ?? $row->id) }}"
                       class="group bg-white rounded-2xl overflow-hidden shadow-md hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                        <div class="relative">
                            <img src="{{ asset($row->image) }}" alt="{{ $row->name }}"
                                 class="h-52 w-full object-cover transition-transform duration-500 group-hover:scale-105">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/40 to-transparent opacity-0 group-hover:opacity-100 transition"></div>
                        </div>

                        <div class="p-6">
                            <span class="text-xs font-semibold uppercase tracking-wider text-teal">{{$row->category?->name}}</span>
                            <h3 class="text-xl font-playfair font-bold text-navy mt-3 mb-2 group-hover:text-teal transition-colors duration-300">
                                {{ $row->name }}
                            </h3>
                            <p class="text-gray-600 text-sm leading-relaxed mb-4">
                                {{ \Illuminate\Support\Str::limit(strip_tags($row->description), 100) }}
                            </p>
                            <span class="text-sm font-semibold text-teal hover:underline">
                            Read Post →
                        </span>
                        </div>
                    </a>
                @endforeach
            </div>

            <!-- View All Button -->
            <div class="text-center mt-14">
                <a href="{{ route('blog.index') }}"
                   class="inline-block bg-primary px-8 py-3.5 text-lg font-semibold rounded-full bg-teal text-white shadow-md hover:bg-primary transition">
                    View All Blog Posts
                </a>
            </div>
        </div>
    </section>
    @else

    @endif
    @if($homepage->contact_status == 1)
        <section id="contact" class="py-20 bg-white">
            @livewire('components.contact-form')
        </section>
    @else

    @endif



</div>

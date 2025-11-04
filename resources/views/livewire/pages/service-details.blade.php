@section('title', $service->name)

@section('meta_tags')
    <!-- Primary Meta Tags -->
    <meta name="title" content="{{ $service->name }} | {{ $service->name }}">
    <meta name="description" content="{{ strip_tags(Str::limit($service->seo_description ?? $service->description, 160)) }}">
    <meta name="keywords" content="{{ $service->seo_keywords }}">
    <meta name="author" content="{{ $service->name }}">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="{{ url()->current() }}">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="article">
    <meta property="og:site_name" content="{{ $service->name }}">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:title" content="{{ $service->name }} | {{ $service->name }}">
    <meta property="og:description" content="{{ strip_tags(Str::limit($service->seo_description ?? $service->description, 160)) }}">
    <meta property="og:image" content="{{ asset('storage/'.$service->image) }}">
    <meta property="og:locale" content="en_US">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ $service->name }} | {{ $service->name }}">
    <meta name="twitter:description" content="{{ strip_tags(Str::limit($service->seo_description ?? $service->description, 160)) }}">
    <meta name="twitter:image" content="{{ asset('storage/'.$service->image) }}">

    <!-- Schema.org JSON-LD for Service -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "Service",
            "name": "{{ $service->name }}",
        "description": "{{ strip_tags(Str::limit($service->seo_description ?? $service->description, 180)) }}",
        "provider": {
            "@type": "Organization",
            "name": "{{ $service->name }}",
            "url": "{{ url('/') }}"
        },
        "areaServed": "{{ $service->location }}",
        "image": "{{ asset('storage/'.$service->image) }}",
        "url": "{{ url()->current() }}"
    }
    </script>
@endsection


<div>
    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-header-box">
                        <h1 class="text-anime-style-3 text-center" data-cursor="-opaque">
                            {{ $service->name }}
                            <br>
                            <span class="text-white" style="font-size: 1.25rem; font-weight: 400;">
        {{ $service->location }}
    </span>
                        </h1>



                        <div class="text-center">
                            <nav class="custom-breadcrumb wow fadeInUp" aria-label="breadcrumb">
                                <a href="{{ route('home') }}" wire:navigate>Home</a>
                                <span>/</span>
                                <a href="{{ route('home.service') }}" wire:navigate>Services</a>
                                <span>/</span>
                                <span class="current">{{ $service->name }}</span>
                            </nav>
                        </div>

                        <style>
                            .custom-breadcrumb {
                                font-size: 14px;
                                color: #ffffff;
                            }
                            .custom-breadcrumb a {
                                text-decoration: none;
                                color: #ffffff;
                                transition: color 0.3s;
                            }
                            .custom-breadcrumb a:hover {
                                color: #f1f1f1;
                            }
                            .custom-breadcrumb span {
                                color: #ffffff;
                            }
                            .custom-breadcrumb .current {
                                font-weight: 600;
                                color: #f1f1f1;
                            }
                        </style>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Page Service Single Start -->
    <div class="page-service-single">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="service-single-content">
                        <div class="service-single-slider">
                            <div class="swiper">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="service-slider-image">
                                            <figure>
                                                <img src="{{ asset('storage/'.$service->image) }}"
                                                     alt="{{ $service->name }}"
                                                     loading="lazy"
                                                     width="100%"
                                                     height="auto">
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>

                        <div class="service-entry">

                            <div>{!! $service->main_content !!}</div>
                        </div>

                        @if(!empty($service->faqs) && is_array($service->faqs))
                            <div class="service-single-faqs mt-5">
                                <div class="section-title">
                                    <h3 class="wow fadeInUp">FAQs</h3>
                                    <h2 class="text-anime-style-2" data-cursor="-opaque">
                                        {{ $service->faqs_header ?? 'Frequently Asked Questions' }}
                                    </h2>
                                </div>

                                <div class="our-faqs-accordion" id="faqsaccordion">
                                    @foreach($service->faqs as $index => $faq)
                                        <div class="accordion-item wow fadeInUp" data-wow-delay="{{ $index * 0.2 }}s">
                                            <h2 class="accordion-header" id="faqheading{{ $index }}">
                                                <button class="accordion-button {{ $index !== 0 ? 'collapsed' : '' }}" type="button"
                                                        data-bs-toggle="collapse"
                                                        data-bs-target="#faqcollapse{{ $index }}"
                                                        aria-expanded="{{ $index === 0 ? 'true' : 'false' }}"
                                                        aria-controls="faqcollapse{{ $index }}">
                                                    {{ $faq['question'] ?? '' }}
                                                </button>
                                            </h2>
                                            <div id="faqcollapse{{ $index }}"
                                                 class="accordion-collapse collapse {{ $index === 0 ? 'show' : '' }}"
                                                 aria-labelledby="faqheading{{ $index }}"
                                                 data-bs-parent="#faqsaccordion">
                                                <div class="accordion-body">
                                                    <p>{{ $faq['answer'] ?? '' }}</p>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        @endif
                    </div>
                </div>

                <style>
                    .sticky-sidebar {
                        position: sticky;
                        top: 100px; /* adjust to your header height */
                        align-self: flex-start;
                    }

                </style>
                <div class="col-lg-4 sticky-sidebar">
                    @livewire('components.service-sidebar')
                </div>

            </div>
        </div>
    </div>
    <!-- Page Service Single End -->
</div>

@section('title')
    {{ $setting->seo_service_title ?? 'Service' }}
@endsection

@section('meta_tags')

    <!-- Basic SEO -->
    <meta name="description" content="{{ $setting->seo_service_description ?? 'Our services' }}">
    <meta name="keywords" content="{{ $setting->seo_service_keywords ?? '' }}">
    <meta name="author" content="{{ $setting->name ?? config('app.name') }}">
    <link rel="canonical" href="{{ url()->current() }}">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:title" content="{{ $setting->seo_service_title ?? 'Service' }}">
    <meta property="og:description" content="{{ $setting->seo_service_description ?? 'Our services' }}">
    <meta property="og:image" content="{{ asset('storage/app/public/' . $setting->website_logo) }}">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:url" content="{{ url()->current() }}">
    <meta name="twitter:title" content="{{ $setting->seo_service_title ?? 'Service' }}">
    <meta name="twitter:description" content="{{ $setting->seo_service_description ?? 'Our services' }}">
    <meta name="twitter:image" content="{{ asset('storage/app/public/' . $setting->website_logo) }}">

    <!-- Structured Data (JSON-LD) -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "Service",
            "url": "{{ url()->current() }}",
        "name": "{{ $setting->seo_service_title ?? 'Service' }}",
        "description": "{{ $setting->seo_service_description ?? 'Our services' }}",
        "provider": {
            "@type": "Organization",
            "name": "{{ $setting->name ?? config('app.name') }}",
            "logo": {
                "@type": "ImageObject",
                "url": "{{ asset('storage/' . ($setting->logo ?? 'default-logo.png')) }}"
            }
        }
    }
    </script>

@endsection

<div>
    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <!-- Page Header Box Start -->
                    <div class="page-header-box">
                        <h1 class="text-anime-style-3" data-cursor="-opaque">Service</h1>
                        <div class="text-center">
                            <nav class="custom-breadcrumb wow fadeInUp">
                                <a href="{{ route('home') }}" wire:navigate>Home</a>
                                <span>/</span>
                                <a href="{{ route('home.service') }}" wire:navigate>Services</a>
                            </nav>
                        </div>


                        <style>
                            .custom-breadcrumb {
                                font-size: 14px;
                                color: #666;
                            }

                            .custom-breadcrumb a {
                                text-decoration: none;
                                color: #ffffff;
                                transition: color 0.3s;
                            }

                            .custom-breadcrumb a:hover {
                                color: #ffffff;
                            }

                            .custom-breadcrumb span {
                                color: #ffffff;
                            }

                            .custom-breadcrumb .current {
                                font-weight: 600;
                                color: #ffffff;
                            }


                        </style>

                    </div>
                    <!-- Page Header Box End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Page Services Start -->
    <div class="page-services">
        <div class="container">
            <div class="row">
                @foreach($services as $row)
                    <div class="col-lg-3 col-md-6">
                        <!-- Services Item Start -->
                        <div class="service-item wow fadeInUp">
                            <div class="icon-box">
                                <img src="{{asset('storage/'.$row->icons)}}" alt="{{$row->name}}">
                            </div>
                            <div class="service-content">
                                <h3>{{$row->name}}</h3>
                                <p>{{\Illuminate\Support\Str::limit($row->description,80)}}</p>
                            </div>
                            <div class="service-btn">
                                <a href="{{route('service.details',$row->slug)}}" wire:navigate class="redmore-btn">learn more</a>
                            </div>
                        </div>
                        <!-- Services Item End -->
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Page Services End -->

    @if($homepage->testimonials_status === 1)
        <!-- Our Testimonial Section Start -->
        <div class="our-testimonials">
            <div class="container">
                <div class="row section-row">
                    <div class="col-lg-12">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h3 class="wow fadeInUp">{{$homepage->testimonials_title}}</h3>
                            <h2 class="text-anime-style-3" data-cursor="-opaque">{{$homepage->testimonials_header}}</h2>
                            <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->testimonials_paragraph}}</p>
                        </div>
                        <!-- Section Title End -->
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <!-- Testimonial Slider Start -->
                        <div class="testimonial-slider">
                            <div class="swiper">
                                <div class="swiper-wrapper">
                                    @foreach($reviews as $row)
                                        <!-- Testimonial Slide Start -->
                                        <div class="swiper-slide">
                                            <div class="testimonial-item">
                                                <div class="testimonial-header">
                                                    <div class="testimonial-quote">
                                                        <img src="{{asset('assets/images/icon-quote.svg')}}" alt="">
                                                    </div>
                                                    <div class="testimonial-content">
                                                        <p>{{$row->review}}</p>
                                                    </div>
                                                </div>
                                                <div class="testimonial-body">
                                                    <div class="author-image">
                                                        <figure class="image-anime">
                                                            @if(!empty($row->image) && \Storage::exists($row->image))
                                                                <img src="{{ asset('storage/'.$row->image) }}" alt="{{ $row->name }}">
                                                            @else
                                                                <div class="avatar-fallback" style="font-size: 30px !important;">
                                                                    {{ strtoupper(substr($row->name, 0, 1)) }}
                                                                </div>
                                                            @endif
                                                        </figure>
                                                    </div>
                                                    <div class="author-content">
                                                        <h3>{{ $row->name }}</h3>
                                                        <p>patient</p>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- Testimonial Slide End -->
                                    @endforeach

                                </div>
                                <!-- Testimonial Btn Start -->
                                <div class="testimonial-btn">
                                    <div class="testimonial-button-prev"></div>
                                    <div class="testimonial-button-next"></div>
                                </div>
                                <!-- Testimonial Btn End -->
                            </div>
                        </div>
                        <!-- Testimonial Slider End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Our Testimonial Section End -->
    @else

    @endif
</div>

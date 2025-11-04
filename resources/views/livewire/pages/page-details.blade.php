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
    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-header-box">


                        <h1 class="text-anime-style-3 text-center" data-cursor="-opaque">
                            {{ $page->title }}
                            <br>
                            <span class="text-white" style="font-size: 1.25rem; font-weight: 400;">
                                {{ $page->location }}
                            </span>
                        </h1>

                        <div class="text-center">
                            <nav class="custom-breadcrumb wow fadeInUp" aria-label="breadcrumb">
                                <a href="{{ route('home') }}" wire:navigate>Home</a>
                                <span>/</span>
                                <a href="#">Pages</a>
                                <span>/</span>
                                <span class="current">{{ $page->title }}</span>
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

    <div class="about-us">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <!-- About Image Start -->
                    <div class="about-image">
                        <div class="about-img">
                            <img src="{{asset('storage/app/public/'.$page->image)}}" alt="{{$page->title}}">
                        </div>
                    </div>
                    <!-- About Image End -->
                </div>
                <div class="col-lg-6">
                    <!-- About Us Content Start -->
                    <div class="about-us-content">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h3 class="wow fadeInUp">Pages</h3>
                            <h2 class="text-anime-style-3" data-cursor="-opaque">{{$page->title}}</h2>
                            <p class="wow fadeInUp" data-wow-delay="0.25s">{{$page->description}}</p>
                        </div>
                        <!-- Section Title End -->
                    </div>
                    <!-- About Us Content End -->
                </div>
            </div>
            <p class="service-entry mt-2">
               {!! $page->main_content !!}
            </p>
        </div>
    </div>

    @php
        // Make it a Laravel collection for easy sorting
        $components = collect($page->components)->sortBy('sort_by');
    @endphp

    @foreach ($components as $component)
        @if($component['type'] == "services")
            @if($homepage->service_status === 1)
                <!-- Our Service Section Start -->
                <div class="our-service">
                    <div class="container">
                        <div class="row section-row">
                            <div class="col-lg-12">
                                <!-- Section Title Start -->
                                <div class="section-title">
                                    <h3 class="wow fadeInUp">{{$homepage->service_title}}</h3>
                                    <h2 class="text-anime-style-3" data-cursor="-opaque">{{$homepage->service_header}}</h2>
                                    <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->service_paragraph}}</p>
                                </div>
                                <!-- Section Title End -->
                            </div>
                        </div>

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
                <!-- Our Service Section End -->
            @else

            @endif

        @else

        @endif

            @if($component['type'] == "faqs")
                <div class="container">
                    <div class="page-faqs-catagery">
                        <div class="page-faq-accordion" id="general_information">
                            <div class="faq-accordion-title">
                                <h2 class="text-anime-style-3" data-cursor="-opaque">FAQs</h2>
                            </div>

                            <div class="page-faq-accordion" id="accordion">
                                @foreach ($faqs as $index => $faq)
                                    <div class="accordion-item wow fadeInUp" data-wow-delay="{{ $index * 0.25 }}s">
                                        <h2 class="accordion-header" id="heading{{ $index }}">
                                            <button class="accordion-button {{ $index === 0 ? '' : 'collapsed' }}" type="button"
                                                    data-bs-toggle="collapse"
                                                    data-bs-target="#collapse{{ $index }}"
                                                    aria-expanded="{{ $index === 0 ? 'true' : 'false' }}"
                                                    aria-controls="collapse{{ $index }}">
                                                {{ $faq->question }}
                                            </button>
                                        </h2>
                                        <div id="collapse{{ $index }}"
                                             class="accordion-collapse collapse {{ $index === 0 ? 'show' : '' }}"
                                             aria-labelledby="heading{{ $index }}"
                                             data-bs-parent="#accordion">
                                            <div class="accordion-body">
                                                <p>{{ $faq->answer }}</p>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>


            @else

            @endif

            @if($component['type'] == "doctor")
                    @if($homepage->team_status === 1)
                        <!-- Our Team Section Start -->
                        <div class="our-team">
                            <div class="container">
                                <div class="row section-row">
                                    <div class="col-lg-12">
                                        <!-- Section Title Start -->
                                        <div class="section-title">
                                            <h3 class="wow fadeInUp">{{$homepage->team_title}}</h3>
                                            <h2 class="text-anime-style-3" data-cursor="-opaque">{{$homepage->team_header}}</h2>
                                            <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->team_paragraph}}</p>
                                        </div>
                                        <!-- Section Title End -->
                                    </div>
                                </div>
                                <div class="row justify-content-center text-center">
                                    @foreach($doctors as $row)
                                        <div class="col-lg-3 col-md-6 d-flex justify-content-center">
                                            <!-- Team Member Item Start -->
                                            <div class="team-member-item wow fadeInUp">
                                                <!-- Team Image Start -->
                                                <div class="team-image">
                                                    <figure class="image-anime">
                                                        <img src="{{ asset('storage/'.$row->image) }}" alt="{{ $row->name }}">
                                                    </figure>

                                                    <!-- Team Social Icon Start -->
                                                    <div class="team-social-icon">
                                                        <ul>
                                                            @if($row->facebook)
                                                                <li><a href="{{ $row->facebook }}" target="_blank" class="social-icon"><i class="fa-brands fa-facebook-f"></i></a></li>
                                                            @endif
                                                            @if($row->twitter)
                                                                <li><a href="{{ $row->twitter }}" target="_blank" class="social-icon"><i class="fa-brands fa-x-twitter"></i></a></li>
                                                            @endif
                                                            @if($row->linkedin)
                                                                <li><a href="{{ $row->linkedin }}" target="_blank" class="social-icon"><i class="fa-brands fa-linkedin-in"></i></a></li>
                                                            @endif
                                                            @if($row->instagram)
                                                                <li><a href="{{ $row->instagram }}" target="_blank" class="social-icon"><i class="fa-brands fa-instagram"></i></a></li>
                                                            @endif
                                                        </ul>
                                                    </div>
                                                    <!-- Team Social Icon End -->
                                                </div>
                                                <!-- Team Image End -->

                                                <!-- Team Content Start -->
                                                <div class="team-content">
                                                    <h3>{{ $row->name }}</h3>
                                                    <p>{{ $row->designation }}</p>
                                                </div>
                                                <!-- Team Content End -->
                                            </div>
                                            <!-- Team Member Item End -->
                                        </div>
                                    @endforeach
                                </div>

                            </div>
                        </div>
                        <!-- Our Team Section End -->
                    @else

                    @endif

            @else

            @endif

            @if($component['type'] == "review")
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
            @else

            @endif
    @endforeach




</div>

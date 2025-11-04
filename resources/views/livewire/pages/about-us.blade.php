@section('title')
About Us
@endsection
@section('meta_tags')
    <!-- Primary Meta Tags -->
    <meta name="title" content="{{ $homepage->about_title }} | {{ $setting->name }}">
    <meta name="description" content="{{ strip_tags(Str::limit($homepage->about_description, 160)) }}">
    <meta name="keywords" content="{{ implode(',', $homepage->about_keywords ?? []) }}">
    <meta name="author" content="{{ $setting->name }}">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="{{ url()->current() }}">

    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="{{ $setting->name }}">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:title" content="{{ $homepage->about_title }} | {{ $setting->name }}">
    <meta property="og:description" content="{{ strip_tags(Str::limit($homepage->about_description, 160)) }}">
    <meta property="og:image" content="{{ asset('storage/' . $homepage->about_image) }}">
    <meta property="og:locale" content="en_US">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ $homepage->about_title }} | {{ $setting->name }}">
    <meta name="twitter:description" content="{{ strip_tags(Str::limit($homepage->about_description, 160)) }}">
    <meta name="twitter:image" content="{{ asset('storage/' . $homepage->about_image) }}">

    <!-- Schema.org JSON-LD for Organization / About -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "Organization",
            "name": "{{ $setting->name }}",
        "description": "{{ strip_tags(Str::limit($homepage->about_description, 180)) }}",
        "url": "{{ url('/') }}",
        "logo": "{{ asset('storage/' . $homepage->about_image) }}",
        "sameAs": [],
        "address": {
            "@type": "PostalAddress",
            "addressLocality": "{{ $homepage->location ?? '' }}",
            "addressCountry": "USA"
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
                        <h1 class="text-anime-style-3" data-cursor="-opaque">About Us
                        </h1>

                        <div class="text-center">
                            <nav class="custom-breadcrumb wow fadeInUp" aria-label="breadcrumb">
                                <a href="{{ route('home') }}" wire:navigate>Home</a>
                                <span>/</span>
                                <a href="{{ route('home.about') }}" wire:navigate>About us</a>
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
    <!-- About Us Section Start -->
    <div class="about-us">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <!-- About Image Start -->
                    <div class="about-image">
                        <div class="about-img">
                            <img src="{{asset('storage/'.$homepage->about_image)}}" alt="{{$homepage->about_title}}">
                        </div>

                        <!-- Happy Patients Counter Start -->
                        <div class="happy-patients-counter">
                            <div class="happy-patients-counter-box">
                                <div class="icon-box">
                                    <img src="{{asset('assets')}}/images/icon-happy-patients.svg" alt="">
                                </div>

                                <div class="happy-patients-counter-content">
                                    <h3><span class="counter">{{$homepage->patients}}</span>+</h3>
                                    <p>happy patients</p>
                                </div>
                            </div>
                        </div>
                        <!-- Happy Patients Counter End -->
                    </div>
                    <!-- About Image End -->
                </div>
                <div class="col-lg-6">
                    <!-- About Us Content Start -->
                    <div class="about-us-content">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h3 class="wow fadeInUp">About Us</h3>
                            <h2 class="text-anime-style-3" data-cursor="-opaque">{{$homepage->about_title}}</h2>
                            <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->about_description}}</p>
                        </div>
                        <!-- Section Title End -->

                        <!-- About Content Body Start -->
                        <div class="about-content-body">
                            <div class="row align-items-center">
                                <div class="col-md-7">
                                    <!-- About Content List Start -->
                                    <div class="about-content-list wow fadeInUp" data-wow-delay="0.5s">
                                        <ul>
                                            @foreach($homepage->about_us_list as $item)
                                                <li>{{ $item['list'] }}</li>
                                            @endforeach
                                        </ul>
                                    </div>

                                    <!-- About Content List End -->
                                </div>

                                <div class="col-md-5">
                                    <!-- About Content Box Start -->
                                    <div class="experience-counter wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="icon-box">
                                            <img src="{{asset('assets')}}/images/icon-experience-year.svg" alt="">
                                        </div>
                                        <div class="experience-counter-content">
                                            <h3><span class="counter">{{$homepage->experience}}</span>+</h3>
                                            <p>years of experience</p>
                                        </div>
                                    </div>
                                    <!-- About Content Box End -->
                                </div>
                            </div>
                        </div>
                        <!-- About Content Body End -->

                        <!-- About Content Btn Start -->
                        <div class="about-content-btn wow fadeInUp" data-wow-delay="0.75s">
                            <a href="{{$homepage->about_button_url}}" class="btn-default">{{$homepage->about_button}}</a>
                        </div>
                        <!-- About Content Btn End -->
                    </div>
                    <!-- About Us Content End -->
                </div>
            </div>
        </div>
    </div>
    <!-- About Us Section End -->

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

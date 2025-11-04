@section('title')
    {{ $setting->seo_home_title ?? $setting->name ?? 'Home' }}
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

    <!-- Hero Section Start -->
    <div class="hero bg-image hero-video">
        <!-- Video Start -->
        <div class="hero-bg-video">
            <!-- Selfhosted Video Start -->
            <!-- <video autoplay muted loop id="myVideo"><source src="images/hero-bg-video.mp4" type="video/mp4"></video> -->
            <video autoplay muted loop id="myVideo"><source src="{{asset('storage/'.$homepage->header_video)}}" type="video/mp4"></video>

            <!-- Selfhosted Video End -->

            <!-- Youtube Video Start -->
            <!-- <div id="herovideo" class="player" data-property="{videoURL:'74DWwSxsVSs',containment:'.hero-video', showControls:false, autoPlay:true, loop:true, vol:0, mute:false, startAt:0,  stopAt:296, opacity:1, addRaster:true, quality:'large', optimizeDisplay:true}"></div> -->
            <!-- Youtube Video End -->
        </div>
        <!-- Video End -->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <!-- Hero Content Start -->
                    <div class="hero-content">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h1 class="text-anime-style-3">{{$homepage->header_title}}</h1>
                            <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->header_small_paragraph}}</p>
                        </div>
                        <!-- Section Title End -->

                        <!-- Hero Content Body Start -->
                        <div class="hero-content-body wow fadeInUp" data-wow-delay="0.5s">
                            <a href="{{$homepage->header_button_url}}" target="_blank" class="btn-default btn-highlighted">{{$homepage->header_button}}</a>
                        </div>
                        <!-- Hero Content Body End -->

                        @php
                            // Handle both JSON string and array
                            $heroFeatures = is_string($homepage->hero_features)
                                ? json_decode($homepage->hero_features, true)
                                : $homepage->hero_features;
                        @endphp

                        @if (!empty($heroFeatures) && is_array($heroFeatures))
                            <div class="hero-content-footer">
                                @foreach ($heroFeatures as $index => $feature)
                                    <div class="hero-footer-box wow fadeInUp"
                                         data-wow-delay="{{ 0.25 + ($index * 0.25) }}s"
                                         style="visibility: visible; animation-delay: {{ 0.25 + ($index * 0.25) }}s; animation-name: fadeInUp;">

                                        <div class="icon-box">
                                            <img src="{{ asset('storage/' . $feature['image']) }}" alt="{{ $feature['title'] ?? '' }}">
                                        </div>
                                        <div class="hero-footer-box-content">
                                            <p>{{ $feature['title'] ?? '' }}</p>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        @endif


                    </div>
                    <!-- Hero Content End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Section End -->




    <!-- CTA Contact Section Start -->
    <div class="cta-contact-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <!-- Cta Item Start -->
                    <div class="cta-contact-item wow fadeInUp">
                        <div class="icon-box">
                            <img src="{{asset('assets')}}/images/icon-phone.svg" alt="">
                        </div>
                        <div class="cta-contact-content">
                            <h3>Need Dental Services ?</h3>
                            <p>Call on : {{$homepage->header_phone_number}}</p>
                        </div>
                    </div>
                    <!-- Cta Item End -->
                </div>

                <div class="col-lg-4 col-md-6">
                    <!-- Cta Item Start -->
                    <div class="cta-contact-item wow fadeInUp" data-wow-delay="0.25s">
                        <div class="icon-box">
                            <img src="{{asset('assets')}}/images/icon-clock.svg" alt="">
                        </div>
                        <div class="cta-contact-content">
                            <h3>opening hours</h3>
                            <p>{{$homepage->header_title_two}}</p>
                        </div>
                    </div>
                    <!-- Cta Item End -->
                </div>

                <div class="col-lg-4 col-md-6">
                    <!-- Cta Item Start -->
                    <div class="cta-contact-item wow fadeInUp" data-wow-delay="0.5s">
                        <div class="icon-box">
                            <img src="{{asset('assets')}}/images/icon-mail.svg" alt="">
                        </div>
                        <div class="cta-contact-content">
                            <h3>schedule appointment</h3>
                            <p>Mail us : {{$homepage->header_title_three}}</p>
                        </div>
                    </div>
                    <!-- Cta Item End -->
                </div>
            </div>
        </div>
    </div>
    <!-- CTA Contact Section End -->

    @if($homepage->about_status === 1)
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
                                    <img src="{{asset('assets/images/icon-happy-patients.svg')}}" alt="">
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
                            <h2 class="text-anime-style-3">{{$homepage->about_title}}</h2>
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
    @else

    @endif

    @if($homepage->service_status === 1)
    <!-- Our Service Section Start -->
    <div class="our-service">
        <div class="container">
            <div class="row section-row">
                <div class="col-lg-12">
                    <!-- Section Title Start -->
                    <div class="section-title">
                        <h3 class="wow fadeInUp">{{$homepage->service_title}}</h3>
                        <h2 class="text-anime-style-3">{{$homepage->service_header}}</h2>
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

    @if($homepage->process_status === 1)
    <!-- Our Process Section Start -->
    <div class="our-process">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="our-process-content">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h3 class="wow fadeInUp">{{$homepage->process_title}}</h3>
                            <h2 class="text-anime-style-3">{{$homepage->process_header}}</h2>
                            <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->process_paragraph}}</p>
                        </div>
                        <!-- Section Title End -->

                        <!-- Section Button Start -->
                        <div class="section-btn wow fadeInUp" data-wow-delay="0.5s">
                            <a href="{{$homepage->process_button_url}}" target="_blank" class="btn-default">{{$homepage->process_button}}</a>
                        </div>
                        <!-- Section Button End -->
                    </div>
                </div>

                <div class="col-lg-6">
                    <!-- Our Process List Start -->
                    <div class="our-process-list wow fadeInUp" data-wow-delay="0.25s">

                        @if(!empty($homepage->process_step) && is_array($homepage->process_step))
                            @foreach($homepage->process_step as $step)
                                <!-- Process Item Start -->
                                <div class="our-process-item">
                                    <div class="icon-box">
                                        <figure>
                                            <img src="{{ asset('storage/'.$step['icon']) }}" alt="{{ $step['title'] }}">
                                        </figure>
                                    </div>
                                    <div class="process-item-content">
                                        <h3>{{ $step['title'] }}</h3>
                                        <p>{{ $step['paragraph'] }}</p>
                                    </div>
                                </div>
                                <!-- Process Item End -->
                            @endforeach
                        @endif

                    </div>
                    <!-- Our Process List End -->
                </div>

            </div>
        </div>
    </div>
    <!-- Our Process Section End -->
    @else

    @endif

    @if($homepage->choose_status === 1)
    <!-- Why Choose Us Section Start -->
    <div class="why-choose-us">
        <div class="container-fluid">
            <div class="row no-gutters align-items-center">
                <div class="col-lg-6 order-lg-1 order-2">
                    <!-- Why Choose Image Start -->
                    <div class="why-choose-image">
                        <!-- Why Choose Box Start -->
                        <div class="why-choose-box">
                            <!-- Why Choose Item Start -->

                            @if(!empty($homepage->choose_options) && is_array($homepage->choose_options))
                                @foreach($homepage->choose_options as $step)
                            <div class="why-choose-item wow fadeInUp">
                                <div class="icon-box">
                                    <img src="{{ asset('storage/'.$step['icon']) }}" alt="{{ $step['title'] }}">
                                </div>
                                <div class="why-choose-item-content">
                                    <h3>{{ $step['title'] }}</h3>
                                    <p>{{ $step['paragraph'] }}</p>
                                </div>
                            </div>
                                @endforeach
                            @endif

                            <!-- Why Choose Item End -->
                        </div>
                        <!-- Why Choose Box End -->
                    </div>
                    <!-- Why Choose Image End -->
                </div>

                <div class="col-lg-6 order-lg-2 order-1">
                    <!-- Why Choose Content Start -->
                    <div class="why-choose-content">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h3 class="wow fadeInUp">{{$homepage->choose_title}}</h3>
                            <h2 class="text-anime-style-3">{{$homepage->choose_header}}</h2>
                            <p class="highlighted-text wow fadeInUp" data-wow-delay="0.25s">{!! $homepage->choose_paragraph !!}</p>
                        </div>
                        <!-- Section Title End -->

                        <!-- Why Choose Body Start -->
                        <div class="why-choose-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <!-- Why Choose Counter Box Start -->
                                    <div class="why-choose-counter-box">
                                        <!-- Why Choose Counter No Start -->
                                        <div class="why-choose-counter-no">
                                            <p>01</p>
                                        </div>
                                        <!-- Why Choose Counter No End -->

                                        <!-- Why Choose Counter Content Start -->
                                        <div class="why-choose-counter-content">
                                            <h2><span class="counter">{{$homepage->experience}}</span>+</h2>
                                            <h3>years of experience</h3>
                                        </div>
                                        <!-- Why Choose Counter Content End -->
                                    </div>
                                    <!-- Why Choose Counter Box End -->
                                </div>

                                <div class="col-md-4">
                                    <!-- Why Choose Counter Box Start -->
                                    <div class="why-choose-counter-box">
                                        <!-- Why Choose Counter No Start -->
                                        <div class="why-choose-counter-no">
                                            <p>02</p>
                                        </div>
                                        <!-- Why Choose Counter No End -->

                                        <!-- Why Choose Counter Content Start -->
                                        <div class="why-choose-counter-content">
                                            <h2><span class="counter">{{$homepage->patients}}</span></h2>
                                            <h3>happy patients</h3>
                                        </div>
                                        <!-- Why Choose Counter Content End -->
                                    </div>
                                    <!-- Why Choose Counter Box End -->
                                </div>

                                <div class="col-md-4">
                                    <!-- Why Choose Counter Box Start -->
                                    <div class="why-choose-counter-box">
                                        <!-- Why Choose Counter No Start -->
                                        <div class="why-choose-counter-no">
                                            <p>03</p>
                                        </div>
                                        <!-- Why Choose Counter No End -->

                                        <!-- Why Choose Counter Content Start -->
                                        <div class="why-choose-counter-content">
                                            <h2><span class="counter">{{$homepage->treatment}}</span>+</h2>
                                            <h3>treatment completed</h3>
                                        </div>
                                        <!-- Why Choose Counter Content End -->
                                    </div>
                                    <!-- Why Choose Counter Box End -->
                                </div>
                            </div>
                        </div>
                        <!-- Why Choose Body End -->
                    </div>
                    <!-- Why Choose Content End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Why Choose Us Section End -->
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
                        <h2 class="text-anime-style-3">{{$homepage->testimonials_header}}</h2>
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

    @if($homepage->provide_status === 1)
    <!-- We Provide Section Start -->
    <div class="we-provide">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <!-- We Provide Content Start -->
                    <div class="we-provide-content">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h3 class="wow fadeInUp">{{$homepage->provide_title}}</h3>
                            <h2 class="text-anime-style-3">{{$homepage->provide_header}}</h2>
                            <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->provide_paragraph}}</p>
                        </div>
                        <!-- Section Title End -->
                    </div>
                    <!-- We Provide Content End -->
                </div>

                <div class="col-lg-6">
                    <!-- We Provide Image Video Start -->
                    <div class="we-provide-image-video">
                        <!-- We Provide Image Start -->
                        <div class="we-provide-image">
                            <a href="{{$homepage->provide_video_link}}" class="popup-video" data-cursor-text="Play">
                                <img src="{{asset('assets/images/we-provide-image.jpg')}}" alt="{{$homepage->provide_title}}">
                            </a>
                        </div>
                        <!-- We Provide Image End -->

                        <!-- Video Play Button Start -->
                        <div class="video-play-button">
                            <a href="{{$homepage->provide_video_link}}" class="popup-video" data-cursor-text="Play">
                                <i class="fa-solid fa-play"></i>
                            </a>
                        </div>
                        <!-- Video Play Button End -->
                    </div>
                    <!-- We Provide Image Video End -->
                </div>

                <div class="col-lg-12">
                    <!-- We Provide Box Start -->
                    <div class="we-provide-box">
                        <div class="row">
                            @if(!empty($homepage->provide_options) && is_array($homepage->provide_options))
                                @foreach($homepage->provide_options as $step)
                                    <div class="col-lg-4 col-md-6">
                                        <!-- We Provide Item Start -->
                                        <div class="we-provide-item wow fadeInUp">
                                            <div class="provide-item-no">
                                                <h3>{{$loop->iteration}}</h3>
                                            </div>
                                            <div class="provide-item-content">
                                                <h3>{{ $step['title'] }}</h3>
                                                <p>{{$step['paragraph']}}</p>
                                            </div>
                                        </div>
                                        <!-- We Provide Item End -->
                                    </div>
                                @endforeach
                            @endif




                        </div>
                    </div>
                    <!-- We Provide Box End -->
                </div>
            </div>
        </div>
    </div>
    <!-- We Provide Section End -->
    @else

    @endif

    @if($homepage->team_status === 1)
    <!-- Our Team Section Start -->
    <div class="our-team">
        <div class="container">
            <div class="row section-row">
                <div class="col-lg-12">
                    <!-- Section Title Start -->
                    <div class="section-title">
                        <h3 class="wow fadeInUp">{{$homepage->team_title}}</h3>
                        <h2 class="text-anime-style-3">{{$homepage->team_header}}</h2>
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

{{--    <div class="our-blog">--}}
{{--        <div class="container">--}}
{{--            <div class="row section-row">--}}
{{--                <div class="col-lg-12">--}}
{{--                    <!-- Section Title Start -->--}}
{{--                    <div class="section-title">--}}
{{--                        <h3 class="wow fadeInUp">blog & articles</h3>--}}
{{--                        <h2 class="text-anime-style-3">Our latest dental tips and news</h2>--}}
{{--                        <p class="wow fadeInUp" data-wow-delay="0.25s">The goal of our clinic is to provide friendly, caring dentistry and the highest level of general, cosmetic, and specialist dental treatments. With dental practices throughout the world.</p>--}}
{{--                    </div>--}}
{{--                    <!-- Section Title End -->--}}
{{--                </div>--}}
{{--            </div>--}}

{{--            <div class="row">--}}
{{--                @foreach($blogs as $row)--}}
{{--                    <div class="col-lg-6">--}}
{{--                        <!-- Blog Item Start -->--}}
{{--                        <div class="blog-item wow fadeInUp">--}}
{{--                            <!-- Post Featured Image Start-->--}}
{{--                            <div class="post-featured-image" data-cursor-text="View">--}}
{{--                                <figure>--}}
{{--                                    <a href="{{route('blog.details',$row->slug)}}" wire:navigate class="image-anime">--}}
{{--                                        <img src="{{asset('storage/'.$row->image)}}" alt="{{$row->name}}">--}}
{{--                                    </a>--}}
{{--                                </figure>--}}
{{--                            </div>--}}
{{--                            <!-- Post Featured Image End -->--}}

{{--                            <!-- post Item Body Start -->--}}
{{--                            <div class="post-item-body">--}}
{{--                                <!-- Post Item Content Start -->--}}
{{--                                <div class="post-item-content">--}}
{{--                                    <h3><a href="{{route('blog.details',$row->slug)}}"  wire:navigate>{{$row->name}}</a></h3>--}}
{{--                                    <p>{{\Illuminate\Support\Str::limit($row->description,100)}}</p>--}}
{{--                                </div>--}}
{{--                                <!-- Post Item Content End -->--}}

{{--                                <!-- Post Readmore Button Start-->--}}
{{--                                <div class="post-item-btn">--}}
{{--                                    <a href="{{route('blog.details',$row->slug)}}"  wire:navigate class="redmore-btn">read more</a>--}}
{{--                                </div>--}}
{{--                                <!-- Post Readmore Button End-->--}}
{{--                            </div>--}}
{{--                            <!-- post Item Body End -->--}}
{{--                        </div>--}}
{{--                        <!-- Blog Item End -->--}}
{{--                    </div>--}}
{{--                @endforeach--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}






</div>

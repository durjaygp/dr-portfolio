@section('title')
    {{ $setting->seo_contact_title ?? 'Contact Us' }}
@endsection

@section('meta_tags')

    <!-- Basic SEO -->
    <meta name="description" content="{{ $setting->seo_contact_description ?? 'Get in touch with us' }}">
    <meta name="keywords" content="{{ $setting->seo_contact_keywords ?? '' }}">
    <meta name="author" content="{{ $setting->name ?? config('app.name') }}">
    <link rel="canonical" href="{{ url()->current() }}">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:title" content="{{ $setting->seo_contact_title ?? 'Contact Us' }}">
    <meta property="og:description" content="{{ $setting->seo_contact_description ?? 'Get in touch with us' }}">
    <meta property="og:image" content="{{ asset('storage/' . $setting->website_logo) }}">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:url" content="{{ url()->current() }}">
    <meta name="twitter:title" content="{{ $setting->seo_contact_title ?? 'Contact Us' }}">
    <meta name="twitter:description" content="{{ $setting->seo_contact_description ?? 'Get in touch with us' }}">
    <meta name="twitter:image" content="{{ asset('storage/' . $setting->website_logo) }}">

    <!-- Structured Data (JSON-LD) -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "ContactPage",
            "url": "{{ url()->current() }}",
        "name": "{{ $setting->seo_contact_title ?? 'Contact Us' }}",
        "description": "{{ $setting->seo_contact_description ?? 'Get in touch with us' }}",
        "publisher": {
            "@type": "Organization",
            "name": "{{ $setting->name ?? config('app.name') }}",
            "logo": {
                "@type": "ImageObject",
                "url": "{{ asset('storage/' . ($setting->website_logo ?? 'default-logo.png')) }}"
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
                        <h1 class="text-anime-style-3" data-cursor="-opaque">Contact Us</h1>
                        <div class="text-center">
                            <nav class="custom-breadcrumb wow fadeInUp">
                                <a href="{{ route('home') }}" wire:navigate>Home</a>
                                <span>/</span>
                                <a href="{{ route('home.contact') }}" wire:navigate>Contact Us</a>
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
    <!-- Page Contact Us Start -->
    <div class="page-contact-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <!-- Contact Info Box Start -->
                    <div class="contact-info-box page-contact-info-box">
                        <!-- Contact Info Item Start -->
                        <div class="contact-info-item wow fadeInUp" data-wow-delay="0.25s">
                            <!-- Icon Box Start -->
                            <div class="icon-box">
                                <img src="{{asset('assets/images/icon-phone.svg')}}" alt="">
                            </div>
                            <!-- Icon Box End -->

                            <!-- Contact Info Content Start -->
                            <div class="contact-info-content">
                                <h3>contact details</h3>
                                <p>{{$setting->phone}}</p>
                            </div>
                            <!-- Contact Info Content End -->
                        </div>
                        <!-- Contact Info Item End -->

                        <!-- Contact Info Item Start -->
                        <div class="contact-info-item wow fadeInUp" data-wow-delay="0.5s">
                            <!-- Icon Box Start -->
                            <div class="icon-box">
                                <img src="{{asset('assets/images/icon-location.svg')}}" alt="">
                            </div>
                            <!-- Icon BoxEnd  -->

                            <!-- Contact Info Content Start -->
                            <div class="contact-info-content">
                                <h3>address</h3>
                                <p>{{$setting->address}}</p>
                            </div>
                            <!-- Contact Info Content End -->
                        </div>
                        <!-- Contact Info Item End -->

                        <!-- Contact Info Item Start -->
                        <div class="contact-info-item wow fadeInUp" data-wow-delay="0.75s">
                            <!-- Icon Box Start -->
                            <div class="icon-box">
                                <img src="{{asset('assets/images/icon-mail.svg')}}" alt="">
                            </div>
                            <!-- Icon Box End -->

                            <!-- Contact Info Content Start -->
                            <div class="contact-info-content">
                                <h3>email us</h3>
                                <p>{{$setting->email}}</p>
                            </div>
                            <!-- Contact Info Content End -->
                        </div>
                        <!-- Contact Info Item End -->

                        <!-- Contact Info Social List Start -->
                        <div class="contact-info-social-list">
                            <span>follow us: </span>
                            <ul>
                                @php
                                    $socials = [
                                        'facebook' => 'fa-facebook-f',
                                        'twitter' => 'fa-x-twitter',
                                        'linkedin' => 'fa-linkedin-in',
                                        'instagram' => 'fa-instagram',
                                        'whatsapp' => 'fa-whatsapp',
                                        'youtube' => 'fa-youtube',
                                        'tiktok' => 'fa-tiktok',
                                        'telegram' => 'fa-telegram',
                                        'snapchat' => 'fa-snapchat',
                                        'pinterest' => 'fa-pinterest-p',
                                    ];
                                @endphp

                                @foreach($socials as $key => $icon)
                                    @if(!empty($homepage->$key))
                                        <li>
                                            <a href="{{ $homepage->$key }}" target="_blank" rel="noopener">
                                                <i class="fa-brands {{ $icon }}"></i>
                                            </a>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>

                        <!-- Contact Info Social List End -->
                    </div>
                    <!-- Contact Info Box End -->
                </div>

                <div class="col-lg-7">
                    <!-- Contact Form Start -->
                    <div class="contact-us-form">
                        <!-- Section Title Start -->
                        <div class="section-title">
                            <h3 class="wow fadeInUp">contact us</h3>
                            <h2 class="text-anime-style-2" data-cursor="-opaque">Reach out for questions</h2>
                            <p class="wow fadeInUp" data-wow-delay="0.25s">We take the time to understand your individual needs and goals, creating customized treatment plans to help you achieve optimal oral health.</p>
                        </div>
                        <!-- Section Title End -->
                        @if (session()->has('success'))
                            <div class="alert alert-success mt-3">
                                {{ session('success') }}
                            </div>
                        @endif
                        <form wire:submit.prevent="submit" class="wow fadeInUp" data-wow-delay="0.5s">
                            <div class="row">
                                <div class="form-group col-md-12 mb-4">
                                    <label>Full Name</label>
                                    <input type="text" wire:model="name" class="form-control" placeholder="Enter Your Name">
                                    @error('name') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>

                                <div class="form-group col-md-6 mb-4">
                                    <label>Your Email</label>
                                    <input type="email" wire:model="email" class="form-control" placeholder="Enter Your Email">
                                    @error('email') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>

                                <div class="form-group col-md-6 mb-4">
                                    <label>Phone Number</label>
                                    <input type="text" wire:model="phone" class="form-control" placeholder="Enter Your Number">
                                    @error('phone') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>

                                <div class="form-group col-md-12 mb-4">
                                    <label>Message</label>
                                    <textarea wire:model="message" class="form-control" rows="7" placeholder="Write Message..."></textarea>
                                    @error('message') <span class="text-danger">{{ $message }}</span> @enderror
                                </div>

                                <div class="col-lg-12">
                                    <div class="contact-form-btn">
                                        <button type="submit" class="btn-default">Submit Now</button>
                                    </div>


                                </div>
                            </div>
                        </form>

{{--                        <form id="contactForm" action="#" method="POST" data-toggle="validator" class="wow fadeInUp" data-wow-delay="0.5s">--}}
{{--                            <div class="row">--}}
{{--                                <div class="form-group col-md-12 mb-4">--}}
{{--                                    <label>full name</label>--}}
{{--                                    <input type="text" name="fullname" class="form-control" id="fullname" placeholder="Enter Your Name" required>--}}
{{--                                    <div class="help-block with-errors"></div>--}}
{{--                                </div>--}}

{{--                                <div class="form-group col-md-6 mb-4">--}}
{{--                                    <label>your email</label>--}}
{{--                                    <input type="email" name ="email" class="form-control" id="email" placeholder="Enter Your Email" required>--}}
{{--                                    <div class="help-block with-errors"></div>--}}
{{--                                </div>--}}

{{--                                <div class="form-group col-md-6 mb-4">--}}
{{--                                    <label>phone number</label>--}}
{{--                                    <input type="text" name="phone" class="form-control" id="phone" placeholder="Enter Your Number" required>--}}
{{--                                    <div class="help-block with-errors"></div>--}}
{{--                                </div>--}}

{{--                                <div class="form-group col-md-12 mb-4">--}}
{{--                                    <label>message</label>--}}
{{--                                    <textarea name="message" class="form-control" id="message" rows="7" placeholder="write Message..." required></textarea>--}}
{{--                                    <div class="help-block with-errors"></div>--}}
{{--                                </div>--}}

{{--                                <div class="col-lg-12">--}}
{{--                                    <div class="contact-form-btn">--}}
{{--                                        <button type="submit" class="btn-default">submit now</button>--}}
{{--                                        <div id="msgSubmit" class="h3 hidden"></div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </form>--}}
                    </div>
                    <!-- Contact Form End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Page Contact Us End -->
</div>

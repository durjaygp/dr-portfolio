<div>
    <!-- Contact Us Section Start -->
    <div class="contact-us">
        <div class="container">
            <div class="row section-row">
                <div class="col-lg-12">
                    <!-- Section Title Start -->
                    <div class="section-title">
                        <h3 class="wow fadeInUp">{{$homepage->contact_title}}</h3>
                        <h2 class="text-anime-style-3" data-cursor="-opaque">{{$homepage->contact_header}}</h2>
                        <p class="wow fadeInUp" data-wow-delay="0.25s">{{$homepage->contact_paragraph}}</p>
                    </div>
                    <!-- Section Title End -->
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <!-- Contact Info Box Start -->
                    <div class="contact-info-box">
                        <!-- Contact Info Item Start -->
                        <div class="contact-info-item wow fadeInUp">
                            <!-- Icon Box Start -->
                            <div class="icon-box">
                                <img src="{{asset('assets/images/icon-phone.svg')}}" alt="{{$setting->phone}}">
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
                        <div class="contact-info-item wow fadeInUp" data-wow-delay="0.25s">
                            <!-- Icon Box Start -->
                            <div class="icon-box">
                                <img src="{{asset('assets/images/icon-location.svg')}}" alt="">
                            </div>
                            <!-- Icon Box End -->

                            <!-- Contact Info Content Start -->
                            <div class="contact-info-content">
                                <h3>address</h3>
                                <p>{{$setting->address}}</p>
                            </div>
                            <!-- Contact Info Content End -->
                        </div>
                        <!-- Contact Info Item End -->

                        <!-- Contact Info Item Start -->
                        <div class="contact-info-item wow fadeInUp" data-wow-delay="0.5s">
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
                    </div>
                    <!-- Contact Info Box End -->
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <!-- Google Map Iframe Start -->
                    <div class="google-map-iframe">
                        {!! $setting->map !!}
                    </div>
                    <!-- Google Map Iframe End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Contact Us Section End -->

    <!-- Footer Start -->
    <footer class="main-footer">
        <div class="container">
            <div class="row">

                <!-- Location -->
                <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                    <h3 class="footer-title">Location</h3>
                    <div class="footer-info-box">
                        <p style="color: var(--footer-text-color);">
                            <i class="fa-solid fa-location-dot"></i>
                            {{$setting->address}}<br>
                            <i class="fa-solid fa-inbox"></i>
                            {{$setting->email}}<br>
{{--                            Vista, CA 92081<br>--}}
                        </p>
                    </div>
                </div>

                <!-- Working Hours -->
                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                    <h3 class="footer-title">Working Hours</h3>
                    @if(!empty($homepage->working_hours) && is_array($homepage->working_hours))
                        <ul class="working-hours-list">
                            @foreach($homepage->working_hours as $day)
                                <li>
                                    <span>{{ $day['day'] }}</span> <span>{{ $day['hours'] }}</span>
                                </li>
                            @endforeach
                        </ul>
                    @else
                        <p>No working hours available.</p>
                    @endif
                </div>

                <!-- Contact -->
                <div class="col-lg-4 col-md-6">
                    <h3 class="footer-title">Contact</h3>
                    <div class="footer-info-box">


                        <p style="color: var(--footer-text-color);">
                            <i class="fa-solid fa-phone"></i>
                            {{$setting->phone}}<br>
                            <a href="mailto:{{ $setting->email }}" class="btn-default" style="margin-top: 10px;">
                                Send Us A Message
                            </a>
                        </p>
                    </div>

                    <!-- Social Links -->
                    <div class="footer-social-links mt-3">
                        <ul class="social-links">
                            @if($homepage->facebook)
                                <li>
                                    <a href="{{ $homepage->facebook }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-facebook-f"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->whatsapp)
                                <li>
                                    <a href="{{ $homepage->whatsapp }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-whatsapp"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->youtube)
                                <li>
                                    <a href="{{ $homepage->youtube }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-youtube"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->instagram)
                                <li>
                                    <a href="{{ $homepage->instagram }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-instagram"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->tiktok)
                                <li>
                                    <a href="{{ $homepage->tiktok }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-tiktok"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->telegram)
                                <li>
                                    <a href="{{ $homepage->telegram }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-telegram"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->snapchat)
                                <li>
                                    <a href="{{ $homepage->snapchat }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-snapchat"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->twitter)
                                <li>
                                    <a href="{{ $homepage->twitter }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-x-twitter"></i>
                                    </a>
                                </li>
                            @endif

                            @if($homepage->pinterest)
                                <li>
                                    <a href="{{ $homepage->pinterest }}" target="_blank" rel="noopener">
                                        <i class="fa-brands fa-pinterest-p"></i>
                                    </a>
                                </li>
                            @endif
                        </ul>

                    </div>
                </div>

            </div>

            <!-- Copyright -->
            <div class="footer-copyright mt-4 pt-3">
                <div class="row">
                    <div class="col-12 text-center">
                        <p class="mb-0">{{ $setting->footer }}</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer End -->


    <!-- Custom Footer CSS -->
    <style>
        .main-footer {
            background: var(--footer-back-color); /* Dark Blue */
            color: var(--footer-text-color);
            padding: 60px 0 30px;
            font-size: 15px;
            line-height: 1.8;
        }

        .footer-title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 20px;
            color: var(--footer-text-color);;
            position: relative;
        }

        .footer-title::after {
            content: "";
            width: 40px;
            height: 2px;
            background: var(--footer-text-color); /* Accent */
            position: absolute;
            bottom: -8px;
            left: 0;
        }

        .footer-info-box {
            display: flex;
            align-items: flex-start;
            margin-bottom: 15px;
        }

        .footer-info-box .icon-box {
            margin-right: 12px;
            font-size: 20px;
            color: var(--footer-text-color);
        }

        .footer-link {
            color: var(--footer-text-color);
            font-weight: 500;
            text-decoration: none;
        }

        .footer-link:hover {
            text-decoration: underline;
        }

        .working-hours-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .working-hours-list li {
            display: flex;
            justify-content: space-between;
            border-bottom: 1px dashed var(--footer-text-color);
            padding: 6px 0;
        }

        .footer-social-links ul {
            display: flex;
            gap: 12px;
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .footer-social-links ul li a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background: var(--social-media-icon-back-color);
            color: var(--social-media-icon-color);
            transition: 0.3s;
            font-size: 14px;
        }

        .footer-social-links ul li a:hover {
            background: var(--social-media-icon-back-color);;
            color: var(--social-media-icon-color);
        }

        .footer-copyright {
            border-top: 1px solid var(--footer-text-color);
            margin-top: 40px;
            padding-top: 20px;
            font-size: 14px;
            color: var(--footer-text-color);
        }
    </style>


</div>

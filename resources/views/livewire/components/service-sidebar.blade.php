<div>
    <div class="service-sidebar">
        <!-- Service Categories List Start -->
        <div class="service-catagery-list wow fadeInUp">
            <h3>our services</h3>
            <ul>
                @foreach($services as $row)
                    <li><a href="{{route('service.details',$row->slug)}}" wire:navigate>{{$row->name}}</a></li>
                @endforeach
            </ul>
        </div>
        <!-- Service Categories List End -->

        <!-- Working Time Box Start -->
        <div class="working-time-box wow fadeInUp" data-wow-delay="0.25s">
            <!-- Working Box Title Start -->
            <div class="working-box-title">
                <h3>Working Hours</h3>
            </div>
            <!-- Working Box Title End -->

            @if(!empty($homepage->working_hours) && is_array($homepage->working_hours))
                <!-- Working Time List Start -->
                <div class="working-time-list">
                    <ul>
                        @foreach($homepage->working_hours as $day)
                            <li>
                                <span>{{ $day['day'] }}</span> {{ $day['hours'] }}
                            </li>
                        @endforeach
                    </ul>
                </div>
                <!-- Working Time List End -->
            @endif

        </div>
        <!-- Working Time Box End -->

        <!-- Section CTA Box Start -->
        <div class="section-cta-box wow fadeInUp" data-wow-delay="0.5s">
            <div class="icon-box">
                <img src="{{asset('assets/images/icon-faqs-cta-box.svg')}}" alt="">
            </div>
            <div class="section-cta-content">
                <p>We always take care of your smile</p>
                <h3>24/7 Emergency</h3>
                <span>{{$setting->phone}}</span>
            </div>
        </div>
        <!-- Section CTA Box End -->
    </div>
</div>

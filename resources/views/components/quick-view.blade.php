<div>
    <div class="modal fade modalDemo" id="quick_view_{{ $id }}" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="header">
                    <span class="icon-close icon-close-popup" data-bs-dismiss="modal"></span>
                </div>
                <div class="wrap">
                    <div class="tf-product-media-wrap">
                        <div dir="ltr" class="swiper tf-single-slide">
                            <div class="swiper-wrapper">
                                @foreach($images as $image)
                                    <div class="swiper-slide">
                                        <div class="item">
                                            <img src="{{ $image }}" alt="Product Image">
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <div class="swiper-button-next button-style-arrow single-slide-prev"></div>
                            <div class="swiper-button-prev button-style-arrow single-slide-next"></div>
                        </div>
                    </div>
                    <div class="tf-product-info-wrap position-relative">
                        <div class="tf-product-info-list">
                            <div class="tf-product-info-title">
                                <h5><a class="link" href="dfasfasfdf">{{ $title }}</a></h5>
                            </div>


                            <div class="tf-product-info-price">
                                <div class="price">${{ $price }}</div>
                            </div>
                            <div class="tf-product-description">
                                <p>{{ $description }}</p>
                            </div>
                            {{ $slot }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

@section('title')
    {{ $setting->seo_blog_title ?? 'Blog' }}
@endsection

@section('meta_tags')

    <!-- Basic SEO -->
    <meta name="description" content="{{ $setting->seo_blog_description ?? 'Read our latest blog posts' }}">
    <meta name="keywords" content="{{ $setting->seo_blog_keywords ?? '' }}">
    <meta name="author" content="{{ $setting->name ?? config('app.name') }}">
    <link rel="canonical" href="{{ url()->current() }}">


    <!-- Open Graph / Facebook -->
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:title" content="{{ $setting->seo_blog_title ?? 'Blog' }}">
    <meta property="og:description" content="{{ $setting->seo_blog_description ?? 'Read our latest blog posts' }}">
    <meta property="og:image" content="{{ asset('storage/' . ($setting->seo_blog_image ?? $setting->logo)) }}">

    <!-- Twitter -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:url" content="{{ url()->current() }}">
    <meta name="twitter:title" content="{{ $setting->seo_blog_title ?? 'Blog' }}">
    <meta name="twitter:description" content="{{ $setting->seo_blog_description ?? 'Read our latest blog posts' }}">
    <meta name="twitter:image" content="{{ asset('storage/' . ($setting->seo_blog_image ?? $setting->logo)) }}">

    <!-- Structured Data (JSON-LD) -->
    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "Blog",
            "url": "{{ url()->current() }}",
        "name": "{{ $setting->seo_blog_title ?? 'Blog' }}",
        "description": "{{ $setting->seo_blog_description ?? 'Read our latest blog posts' }}",
        "publisher": {
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
                        <h1 class="text-anime-style-3" data-cursor="-opaque">Blog</h1>
                        <div class="text-center">
                            <nav class="custom-breadcrumb wow fadeInUp">
                                <a href="{{ route('home') }}" wire:navigate>Home</a>
                                <span>/</span>
                                <a href="{{ route('home.blog') }}" wire:navigate>Blog</a>
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

    <!-- Page Blog Start -->
    <div class="page-blog">
        <div class="container">
            <div class="row">
                @foreach($blogs as $row)
                    <div class="col-lg-4 col-md-6">
                        <!-- Blog Item Start -->
                        <div class="blog-item wow fadeInUp">
                            <!-- Post Featured Image Start-->
                            <div class="post-featured-image" data-cursor-text="View">
                                <figure>
                                    <a href="{{route('blog.details',$row->slug)}}" wire:navigate class="image-anime">
                                        <img src="{{asset('storage/'.$row->image)}}" alt="{{$row->name}}">
                                    </a>
                                </figure>
                            </div>
                            <!-- Post Featured Image End -->

                            <!-- post Item Body Start -->
                            <div class="post-item-body">
                                <!-- Post Item Content Start -->
                                <div class="post-item-content">
                                    <h3><a href="{{route('blog.details',$row->slug)}}" wire:navigate >{{$row->name}}</a></h3>
                                    <p>{{\Illuminate\Support\Str::limit($row->description,100)}}</p>
                                </div>
                                <!-- Post Item Content End -->

                                <!-- Post Readmore Button Start-->
                                <div class="post-item-btn">
                                    <a href="{{route('blog.details',$row->slug)}}" wire:navigate class="redmore-btn">read more</a>
                                </div>
                                <!-- Post Readmore Button End-->
                            </div>
                            <!-- post Item Body End -->
                        </div>
                        <!-- Blog Item End -->
                    </div>
                @endforeach


                    <div class="col-lg-12">
                        <!-- Page Pagination Start -->
                        <div class="page-pagination wow fadeInUp" data-wow-delay="0.5s">
                            <ul class="pagination">
                                {{-- Previous Page Link --}}
                                @if ($blogs->onFirstPage())
                                    <li class="disabled"><span><i class="fa-solid fa-arrow-left-long"></i></span></li>
                                @else
                                    <li><a href="{{ $blogs->previousPageUrl() }}"><i class="fa-solid fa-arrow-left-long"></i></a></li>
                                @endif

                                {{-- Pagination Elements --}}
                                @foreach ($blogs->getUrlRange(1, $blogs->lastPage()) as $page => $url)
                                    <li class="{{ $blogs->currentPage() == $page ? 'active' : '' }}">
                                        <a href="{{ $url }}">{{ $page }}</a>
                                    </li>
                                @endforeach

                                {{-- Next Page Link --}}
                                @if ($blogs->hasMorePages())
                                    <li><a href="{{ $blogs->nextPageUrl() }}"><i class="fa-solid fa-arrow-right-long"></i></a></li>
                                @else
                                    <li class="disabled"><span><i class="fa-solid fa-arrow-right-long"></i></span></li>
                                @endif
                            </ul>
                        </div>
                        <!-- Page Pagination End -->
                    </div>

            </div>
        </div>
    </div>
    <!-- Page Blog End -->


</div>

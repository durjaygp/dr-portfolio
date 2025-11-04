@section('title')
    {{$blog->name}}
@endsection
<div>
    <!-- Page Header Start -->
    <div class="page-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <!-- Page Header Box Start -->
                    <div class="page-header-box">
                        <h1 class="text-anime-style-3" data-cursor="-opaque">{{$blog->name}}</h1>
                        <div class="text-center">
                            <nav class="custom-breadcrumb wow fadeInUp">
                                <a href="{{ route('home') }}" wire:navigate>Home</a>
                                <span>/</span>
                                <a href="{{ route('home.blog') }}" wire:navigate>Blog</a>
                                <span>/</span>
                                <span class="current">{{ $blog->name }}</span>
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

    <!-- Page Single Post Start -->
    <div class="page-single-post">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- Post Featured Image Start -->
                    <div class="post-image">
                            <img src="{{asset('storage/'.$blog->image)}}" alt="{{$blog->name}}">

                    </div>
                    <!-- Post Featured Image Start -->

                    <!-- Post Single Content Start -->
                    <div class="post-content">
                        <!-- Post Entry Start -->
                        <div class="post-entry">
                            <div class="blog-header mb-4">
                                <h2 class="text-3xl font-bold text-gray-900 mb-2 text-anime-style-3" data-cursor="-opaque">
                                    {{ $blog->name }}
                                </h2>
                                <p class="text-sm text-gray-500">
                                    <span class="mr-4"><strong>Created at:</strong> {{ $blog->created_at->format('d M Y H:i') }}</span>
                                    <span class="mr-4"><strong>Author:</strong> {{ $blog->user->name }}</span>
                                    <span><strong>Category:</strong> {{ $blog->category->name }}</span>
                                </p>
                            </div>

                            <p class="wow fadeInUp">{!! $blog->description!!}</p>
                            <p class="wow fadeInUp">{!! $blog->main_content!!}</p>



                        </div>
                        <!-- Post Entry End -->
                    </div>
                    <!-- Post Single Content End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Page Single Post End -->
</div>

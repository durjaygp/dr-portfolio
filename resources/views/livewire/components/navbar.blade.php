<div>
    <!-- 🔹 Top Header Bar -->
    <div class="bg-gray-100 border-b">
        <div class="max-w-7xl mx-auto flex justify-between items-center px-4 sm:px-6 lg:px-8 py-2 text-sm text-gray-600">
            <!-- Left: Social Icons -->
            <div class="flex items-center space-x-4">
                <!-- SVG email icon -->
                <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                    <path fill-rule="evenodd" d="M5.024 3.783A1 1 0 0 1 6 3h12a1 1 0 0 1 .976.783L20.802 12h-4.244a1.99 1.99 0 0 0-1.824 1.205 2.978 2.978 0 0 1-5.468 0A1.991 1.991 0 0 0 7.442 12H3.198l1.826-8.217ZM3 14v5a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-5h-4.43a4.978 4.978 0 0 1-9.14 0H3Z" clip-rule="evenodd"/>
                </svg>

                <a href="mailto:{{$setting->email}}" class="hover:text-accent transition">{{$setting->email}}</a>
            </div>

            <!-- Right: Email -->
            <div class="flex items-center space-x-2">
                <a href="https://www.instagram.com/metabolic_harmony_yyc/" target="_blank" class="hover:text-accent transition">
                    <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                        <path fill="currentColor" fill-rule="evenodd" d="M3 8a5 5 0 0 1 5-5h8a5 5 0 0 1 5 5v8a5 5 0 0 1-5 5H8a5 5 0 0 1-5-5V8Zm5-3a3 3 0 0 0-3 3v8a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8a3 3 0 0 0-3-3H8Zm7.597 2.214a1 1 0 0 1 1-1h.01a1 1 0 1 1 0 2h-.01a1 1 0 0 1-1-1ZM12 9a3 3 0 1 0 0 6 3 3 0 0 0 0-6Zm-5 3a5 5 0 1 1 10 0 5 5 0 0 1-10 0Z" clip-rule="evenodd"/>
                    </svg>

                </a>
                <a href="https://www.linkedin.com/in/kimberly-shapkin-0421b364" target="_blank" class="hover:text-accent transition">
                    <svg class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                        <path fill-rule="evenodd" d="M12.51 8.796v1.697a3.738 3.738 0 0 1 3.288-1.684c3.455 0 4.202 2.16 4.202 4.97V19.5h-3.2v-5.072c0-1.21-.244-2.766-2.128-2.766-1.827 0-2.139 1.317-2.139 2.676V19.5h-3.19V8.796h3.168ZM7.2 6.106a1.61 1.61 0 0 1-.988 1.483 1.595 1.595 0 0 1-1.743-.348A1.607 1.607 0 0 1 5.6 4.5a1.601 1.601 0 0 1 1.6 1.606Z" clip-rule="evenodd"/>
                        <path d="M7.2 8.809H4V19.5h3.2V8.809Z"/>
                    </svg>

                </a>
            </div>
        </div>
    </div>

    <!-- 🔹 Main Navigation -->
    <header class="sticky top-0 z-50 bg-white shadow-lg">
        <nav class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex justify-between items-center">
            <!-- Logo -->
            <a href="/" class="text-xl font-bold text-primary">{{$setting->name}}</a>

            <!-- Desktop Menu -->
            <div class="hidden md:flex space-x-8 text-sm font-medium items-center">
                <a href="/#home" class="nav-link text-[var(--color-text)] hover:text-accent transition duration-300">Home</a>

                @foreach($pagesections as $row)
                    <a href="/#{{\Illuminate\Support\Str::slug($row->title,'-')}}" class="nav-link text-[var(--color-text)] hover:text-accent transition duration-300">
                        {{$row->title}}</a>
                @endforeach

                @if($homepage->blog_status==1)
                    <a href="/#blog" class="nav-link text-[var(--color-text)] hover:text-accent transition duration-300">Blog</a>
                @else

                @endif

                <a href="/#contact" class="nav-link text-primary hover:text-accent transition duration-300 font-semibold border-b-2 border-primary hover:border-accent">Contact</a>
            </div>

            <!-- Mobile Menu Button -->
            <button id="menu-btn" class="md:hidden text-gray-700 focus:outline-none">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-7 w-7" fill="none" viewBox="0 0 24 24"
                     stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M4 6h16M4 12h16m-7 6h7" />
                </svg>
            </button>
        </nav>

        <!-- Mobile Menu -->
        <div id="mobile-menu" class="hidden md:hidden bg-white border-t shadow-lg">
            <div class="flex flex-col space-y-3 py-4 px-6 text-sm font-medium">
                <a href="/#home" class="nav-link text-[var(--color-text)] hover:text-accent transition duration-300">Home</a>

                @foreach($pagesections as $row)
                    <a href="/#{{\Illuminate\Support\Str::slug($row->title,'-')}}" class="nav-link text-[var(--color-text)] hover:text-accent transition duration-300">
                        {{$row->title}}</a>
                @endforeach
                @if($homepage->blog_status==1)
                    <a href="/#blog" class="nav-link text-[var(--color-text)] hover:text-accent transition duration-300">Blog</a>
                @else

                @endif

                <a href="/#contact" class="nav-link text-primary hover:text-accent transition duration-300 font-semibold border-b-2 border-primary hover:border-accent">Contact</a>


                
            </div>
        </div>
    </header>

    <script>
        // Toggle mobile menu
        const menuBtn = document.getElementById('menu-btn');
        const mobileMenu = document.getElementById('mobile-menu');

        menuBtn.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
        });
    </script>
</div>

<div>
    <style>
        a{
         text-decoration: none;
        }
        /* Top Header Bar */
        .top-header {
            background: var(--top-header-back);
            padding: 8px 0;
            font-size: 14px;
        }

        .top-header a {
            color: var(--top-header-text);
            transition: color 0.2s ease;
        }

        .top-header a:hover {
            color: var(--top-header-text-hover);
        }

        .book-btn {
            padding: 5px 20px;
            font-weight: 600;
            color: var(--top-header-button-text)!important;
            background: var(--top-header-button);
            border: 2px solid var(--top-header-button);
            border-radius: 20px;
            transition: all 0.3s ease;
        }

        .book-btn:hover {
            background: var(--top-header-button-hover);
            color: var(--top-header-button-text-hover)!important;
            border-color: var(--top-header-button-hover);
        }

        .book-btn-2 {
            padding: 5px 20px;
            font-weight: 600;
            color: var(--top-header-button-text)!important;
            background: var(--top-header-button);
            border: 2px solid var(--top-header-button);
            border-radius: 20px;
            transition: all 0.3s ease;
        }

        .book-btn-2:hover {
            background: var(--top-header-button-hover);
            color: var(--top-header-button-text-hover)!important;
            border-color: var(--top-header-button-hover);
        }

        /* Desktop Service Dropdown Styles */
        @media (min-width: 992px) {
            .navbar-nav .submenu-parent {
                position: relative;
            }

            /* Add dropdown arrow to Services */
            .navbar-nav .submenu-parent > a::after {
                content: "▾";
                margin-left: 6px;
                font-size: 12px;
                transition: transform 0.3s ease;
            }

            .navbar-nav .submenu-parent:hover > a::after {
                transform: rotate(180deg);
            }

            .navbar-nav .submenu-links {
                position: absolute;
                top: 100%;
                left: 0;
                right: auto;
                width: min(900px, 90vw);
                background: var(--navbar-dropdown-back-color);
                border: 1px solid #eee;
                border-radius: 8px;
                box-shadow: 0 10px 30px rgba(0,0,0,0.15);
                display: none;
                z-index: 1000;
                grid-template-columns: repeat(3, 1fr);
                gap: 8px 20px;
                padding: 20px;
                margin-top: 10px;
                /* Ensure dropdown extends both left and right from menu item */
                margin-left: -200px; /* Adjust this value to control left extension */
            }

            /* For left-side menus, adjust to prevent overflow */
            .navbar-nav > li:nth-child(1) .submenu-links,
            .navbar-nav > li:nth-child(2) .submenu-links {
                margin-left: 0;
                left: 0;
                right: auto;
            }

            /* For center menus */
            .navbar-nav > li:nth-child(3) .submenu-links,
            .navbar-nav > li:nth-child(4) .submenu-links {
                margin-left: -200px;
                left: 0;
                right: auto;
            }

            /* For right-side menus, align to the right */
            .navbar-nav > li:nth-last-child(1) .submenu-links,
            .navbar-nav > li:nth-last-child(2) .submenu-links {
                margin-left: 0;
                left: auto;
                right: 0;
            }

            .navbar-nav .submenu-parent:hover .submenu-links {
                display: grid;
                animation: fadeInUp 0.3s ease;
            }

            /* Fix hover gap - create a larger hover area */
            .navbar-nav .submenu-parent::before {
                content: '';
                position: absolute;
                top: 100%;
                left: -20px;
                right: -20px;
                height: 20px;
                background: transparent;
                z-index: 999;
            }

            .navbar-nav .submenu-links li {
                list-style: none;
                border-bottom: none;
                margin: 0;
            }

            .navbar-nav .submenu-links a {
                color: var(--navbar-menu-text-color);
                padding: 10px 12px;
                display: flex;
                align-items: center;
                text-decoration: none;
                border-radius: 6px;
                transition: all 0.2s ease;
                font-weight: 500;
                font-size: 14px;
            }

            .navbar-nav .submenu-links a:hover {
                background: var(--navbar-dropdown-back-color);
                color: var(--navbar-menu-text-hover-color);
                transform: translateX(3px);
            }

            .menu-icon-box {
                position: relative;
                background-color: var(--accent-color);
                border-radius: 4px;
                width: 24px;
                height: 24px;
                display: flex;
                align-items: center;
                justify-content: center;
                z-index: 1;
                margin-right: 12px;
                flex-shrink: 0;
            }

            .menu-icon-box img {
                width: 16px;
                height: 16px;
                object-fit: contain;
                filter: brightness(0) invert(1);
            }

            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(10px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }
        }

        /* Mobile hamburger */
        @media (max-width: 991px) {
            .mobile-hamburger {
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                width: 28px;
                height: 22px;
                background: none;
                border: none;
                cursor: pointer;
                padding: 0;
                z-index: 1100;
            }
            .mobile-hamburger span {
                display: block;
                height: 3px;
                width: 100%;
                background: var(--navbar-hamberger-color);
                border-radius: 2px;
                transition: all 0.3s ease-in-out;
            }
            .mobile-hamburger:hover span { background: #fff; }

            /* Hamburger active (X) */
            .mobile-hamburger.active span:nth-child(1) {
                transform: rotate(45deg) translate(5px, 5px);
            }
            .mobile-hamburger.active span:nth-child(2) { opacity: 0; }
            .mobile-hamburger.active span:nth-child(3) {
                transform: rotate(-45deg) translate(5px, -5px);
            }

            /* Mobile sidebar + overlay */
            .mobile-overlay {
                position: fixed;
                inset: 0;
                background: rgba(0,0,0,0.5);
                opacity: 0;
                visibility: hidden;
                transition: all 0.3s ease-in-out;
                z-index: 1049;
            }
            .mobile-container {
                position: fixed;
                top: 0;
                right: -280px;
                width: 280px;
                height: 100%;
                background: #fff;
                padding: 20px;
                box-shadow: -2px 0 5px rgba(0,0,0,0.1);
                transition: right 0.3s ease-in-out;
                z-index: 1050;
                overflow-y: auto; /* Enable scrolling */
            }
            .mobile-sidebar.active .mobile-overlay { opacity: 1; visibility: visible; }
            .mobile-sidebar.active .mobile-container { right: 0; }

            .mobile-close {
                position: absolute;
                top: 12px;
                right: 12px;
                font-size: 28px;
                background: none;
                border: none;
                cursor: pointer;
                color: #333;
                z-index: 1051;
            }
            .mobile-menu-content {
                margin-top: 50px;
                min-height: auto;
            }
            .mobile-nav {
                list-style: none;
                padding: 0;
                margin: 0;
            }
            .mobile-nav li {
                border-bottom: 1px solid #eee;
            }
            .mobile-nav a {
                display: flex;
                /*justify-content: space-between;*/
                align-items: center;
                padding: 12px 0;
                color: var(--navbar-menu-mobile-text-color);
                text-decoration: none;
                font-weight: 500;
            }
            .mobile-nav a:hover {
                color: var(--navbar-menu-mobile-text-hover-color);
            }

            /* Mobile submenu */
            .mobile-nav .submenu-links {
                display: none;
                padding-left: 15px;
                background: #f9f9f9;
                margin: 5px 0;
                border-radius: 4px;
                max-height: none;
                overflow: visible;
            }
            .mobile-nav li.open > .submenu-links {
                display: block;
            }

            .mobile-nav .submenu-links li {
                border-bottom: 1px solid #eee;
            }

            .mobile-nav .submenu-links li:last-child {
                border-bottom: none;
            }

            .mobile-nav .submenu-links a {
                padding: 10px 0;
                display: flex;
                align-items: center;
                font-size: 14px;
                border-bottom: none;
            }

            .mobile-nav .submenu-links .menu-icon-box {
                background-color: var(--accent-color);
                border-radius: 4px;
                width: 20px;
                height: 20px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-right: 10px;
                flex-shrink: 0;
            }

            .mobile-nav .submenu-links .menu-icon-box img {
                width: 12px;
                height: 12px;
                object-fit: contain;
                filter: brightness(0) invert(1);
            }

            /* Extra Options */
            .mobile-extra {
                margin-top: 20px;
                padding-bottom: 20px;
            }
        }

        /* Hamburger hidden on desktop */
        @media (min-width: 992px) {
            .mobile-hamburger { display: none; }
            .mobile-sidebar { display: none !important; }
        }

        /* Extra Options */
        .mobile-extra { margin-top: 20px; }
        .btn-mobile {
            display: block;
            background: var(--accent-color);
            color: #fff;
            text-align: center;
            padding: 12px;
            border-radius: 6px;
            text-decoration: none;
            margin-bottom: 15px;
            font-weight: 600;
        }
        .mobile-social a {
            margin-right: 10px;
            font-size: 18px;
            color: #333;
            transition: color 0.2s ease;
        }
        .mobile-social a:hover {
            color: var(--accent-color);
        }

        /* Header button styles */
        .btn-highlighted {
            background-color: var(--primary-button-color);
            color: var(--primary-button-text-color);
            border: none;
            padding: 10px 20px;
            border-radius: 30px;
            font-weight: 600;
            transition: all 0.3s;
            text-decoration: none;
            display: inline-block;
        }

        .btn-highlighted:hover {
            background-color: var(--primary-button-hover-color);
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            color: var(--primary-button-text-hover-color);
        }
    </style>

    <!-- Top Header Start -->
    <div class="top-header">
        <div class="container d-flex justify-content-between align-items-center flex-wrap">
            <!-- Address -->
            <a href="{{ $setting->map_link }}"
               target="_blank"
               class="d-flex align-items-center text-decoration-none">
                <i class="fas fa-map-marker-alt me-2"></i>
                <span>{{ $setting->address ?? 'Our Address' }}</span>
            </a>

            <!-- Buttons -->
            <div class="d-flex align-items-center mt-2 mt-md-0">
                <a href="#"
                   class="btn btn-sm book-btn me-2"
                   data-bs-toggle="modal"
                   data-bs-target="#appointmentModal">
                    BOOK APPOINTMENT
                </a>

                <a href="tel:{{ $setting->phone ?? '' }}" class="btn btn-sm book-btn-2"
                   style="padding: 5px 20px 5px 20px;font-weight: 600; color: #5997A3; border-radius: 20px;">
                    <i class="fas fa-phone-alt me-1"></i>
                    {{ $setting->phone ?? 'Call Us' }}
                </a>
            </div>
        </div>
    </div>
    <!-- Top Header End -->

    <!-- Header Start -->
    <header class="main-header">
        <div class="header-sticky">
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <!-- Logo -->
                    <a class="navbar-brand" wire:navigate href="{{ route('home') }}">
                        <img style="height: 80px!important;" src="{{ asset('storage/' . $setting->website_logo) }}" alt="{{ $setting->name }}">
                    </a>

                    <!-- Main Menu -->
                    <div class="navbar-collapse main-menu d-none d-lg-flex">
                        <div class="nav-menu-wrapper">
                            <ul class="navbar-nav mr-auto" id="menu">
                                @foreach ($menus as $menu)
                                    @php
                                        $href = $this->getMenuUrl($menu, $allServices, $allPages);
                                        $isDropdown = $this->isMenuDropdown($menu);
                                    @endphp

                                    @if($isDropdown)
                                        @if($menu->type === 'page')
                                            <!-- Page Type Dropdown - New Design -->
                                            <li class="nav-item submenu">
                                                <a class="nav-link" href="{{ $href }}" @if($menu->enable_livewire) wire:navigate @endif>
                                                    {{ $menu->title }}
                                                </a>
                                                <ul>
                                                    <!-- Child Menus -->
                                                    @foreach ($menu->children as $child)
                                                        @php
                                                            $childHref = $this->getMenuUrl($child, $allServices, $allPages);
                                                        @endphp
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="{{ $childHref }}" @if($child->enable_livewire) wire:navigate @endif>
                                                                {{ $child->title }}
                                                            </a>
                                                        </li>
                                                    @endforeach

                                                    <!-- Reference Pages -->
                                                    @if(!empty($menu->reference_ids))
                                                        @foreach ($menu->reference_ids as $refId)
                                                            @if($page = $allPages[$refId] ?? null)
                                                                <li class="nav-item">
                                                                    <a class="nav-link" href="{{ url('/' . $page->slug) }}" wire:navigate>
                                                                        {{ $page->title }}
                                                                    </a>
                                                                </li>
                                                            @endif
                                                        @endforeach
                                                    @endif
                                                </ul>
                                            </li>
                                        @else
                                            <!-- Service and Other Type Dropdowns - Keep Original Design -->
                                            <li class="nav-item submenu-parent submenu">
                                                <a class="nav-link" href="/service" @if($menu->enable_livewire) wire:navigate @endif>
                                                    {{ $menu->title }}
                                                </a>

                                                <ul class="submenu-links">
                                                    <!-- Child Menus -->
                                                    @foreach ($menu->children as $child)
                                                        @php
                                                            $childHref = $this->getMenuUrl($child, $allServices, $allPages);
                                                        @endphp
                                                        <li>
                                                            <a class="nav-link d-flex align-items-center" href="{{ $childHref }}" @if($child->enable_livewire) wire:navigate @endif>
                                                                @if ($child->icon)
                                                                    <div class="menu-icon-box me-2">
                                                                        <img src="{{ asset('storage/' . $child->icon) }}" alt="{{ $child->title }}" width="20" height="20">
                                                                    </div>
                                                                @endif
                                                                {{ $child->title }}
                                                            </a>
                                                        </li>
                                                    @endforeach

                                                    <!-- Reference Services -->
                                                    @if($menu->type === 'service' && !empty($menu->reference_ids))
                                                        @foreach ($menu->reference_ids as $refId)
                                                            @if($service = $allServices[$refId] ?? null)
                                                                <li>
                                                                    <a class="nav-link d-flex align-items-center" href="{{ url('/service/' . $service->slug) }}" wire:navigate>
                                                                        @if ($service->icons)
                                                                            <div class="menu-icon-box me-2">
                                                                                <img src="{{ asset('storage/' . $service->icons) }}" alt="{{ $service->name }}" width="20" height="20">
                                                                            </div>
                                                                        @endif
                                                                        {{ $service->name }}
                                                                    </a>
                                                                </li>
                                                            @endif
                                                        @endforeach
                                                    @endif
                                                </ul>
                                            </li>
                                        @endif
                                    @else
                                        <!-- Simple Menu Items (No dropdown) -->
                                        <li class="nav-item">
                                            <a class="nav-link" href="{{ $href }}" @if($menu->enable_livewire) wire:navigate @endif>
                                                {{ $menu->title }}
                                            </a>
                                        </li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>

                        <!-- Header Button -->
                        <div class="header-btn d-inline-flex">
                            <a href="#" class="btn-default" data-bs-toggle="modal" data-bs-target="#appointmentModal">
                                Book Appointment
                            </a>
                        </div>
                    </div>

                    <!-- Mobile Hamburger -->
                    <button class="mobile-hamburger d-lg-none" id="mobile-menu-trigger" aria-label="Toggle Menu">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                </div>
            </nav>
        </div>
    </header>

    <!-- Mobile Menu Sidebar -->
    <div id="mobile-menu-sidebar" class="mobile-sidebar d-lg-none">
        <div id="mobile-menu-overlay" class="mobile-overlay"></div>

        <div id="mobile-menu-container" class="mobile-container">
            <button type="button" id="mobile-menu-close" class="mobile-close">&times;</button>

            <div class="mobile-menu-content">

                <ul class="mobile-nav">
                    @foreach ($menus as $menu)
                        @php
                            $href = $this->getMenuUrl($menu, $allServices, $allPages);
                            $isDropdown = $this->isMenuDropdown($menu);
                        @endphp

                        @if ($isDropdown)
                            <li class="submenu-parent">
                                <!-- Dropdown toggle -->
                                <a href="javascript:void(0)" class="submenu-toggle" style="justify-content: space-between;">
                                    {{ $menu->title }} <span class="arrow">+</span>
                                </a>

                                <ul class="submenu-links">
                                    <!-- Only show 'View All' for service dropdowns -->
                                    @if ($menu->type === 'service')
                                        <li>
                                            <a class="nav-link d-flex align-items-center" href="{{ url('/service') }}" @if($menu->enable_livewire) wire:navigate @endif>
                                                <div class="menu-icon-box me-2">
                                                    <img src="{{ asset('assets/images/icon-service-1.svg') }}" alt="All Services" width="20" height="20">
                                                </div>
                                                View All Services
                                            </a>
                                        </li>
                                    @endif

                                    <!-- Child Menus -->
                                    @foreach ($menu->children as $child)
                                        @php
                                            $childHref = $this->getMenuUrl($child, $allServices, $allPages);
                                        @endphp
                                        <li>
                                            <a class="nav-link d-flex align-items-center" href="{{ $childHref }}" @if($child->enable_livewire) wire:navigate @endif>
                                                @if ($child->icon)
                                                    <div class="menu-icon-box me-2">
                                                        <img src="{{ asset('storage/' . $child->icon) }}" alt="{{ $child->title }}" width="20" height="20">
                                                    </div>
                                                @endif
                                                {{ $child->title }}
                                            </a>
                                        </li>
                                    @endforeach

                                    <!-- Reference Services -->
                                    @if ($menu->type === 'service' && !empty($menu->reference_ids))
                                        @foreach ($menu->reference_ids as $refId)
                                            @if ($service = $allServices[$refId] ?? null)
                                                <li>
                                                    <a class="nav-link d-flex align-items-center" href="{{ url('/service/' . $service->slug) }}" wire:navigate>
                                                        @if ($service->icons)
                                                            <div class="menu-icon-box me-2">
                                                                <img src="{{ asset('storage/' . $service->icons) }}" alt="{{ $service->name }}" width="20" height="20">
                                                            </div>
                                                        @endif
                                                        {{ $service->name }}
                                                    </a>
                                                </li>
                                            @endif
                                        @endforeach
                                    @endif

                                    <!-- Reference Pages (no 'View All' link here anymore) -->
                                    @if ($menu->type === 'page' && !empty($menu->reference_ids))
                                        @foreach ($menu->reference_ids as $refId)
                                            @if ($page = $allPages[$refId] ?? null)
                                                <li>
                                                    <a class="nav-link" href="{{ url('/' . $page->slug) }}" wire:navigate>
                                                        {{ $page->title }}
                                                    </a>
                                                </li>
                                            @endif
                                        @endforeach
                                    @endif
                                </ul>
                            </li>
                        @else
                            <!-- Simple Menu Items -->
                            <li>
                                <a href="{{ $href }}" @if($menu->enable_livewire) wire:navigate @endif>
                                    {{ $menu->title }}
                                </a>
                            </li>
                        @endif
                    @endforeach
                </ul>

                <!-- Extra Options -->
                <div class="mobile-extra">
                    <div class="header-btn d-inline-flex">
                        <a href="#" class="btn-default" data-bs-toggle="modal" data-bs-target="#appointmentModal">
                            Book Appointment
                        </a>
                    </div>

                    <div class="mobile-social" style="margin-top: 25px;">
                        <!-- Your social icons here -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const mobileMenuTrigger = document.getElementById('mobile-menu-trigger');
            const mobileMenuClose = document.getElementById('mobile-menu-close');
            const mobileMenuOverlay = document.getElementById('mobile-menu-overlay');
            const mobileSidebar = document.getElementById('mobile-menu-sidebar');
            const mobileContainer = document.getElementById('mobile-menu-container');
            const mobileSubmenuToggles = document.querySelectorAll('.mobile-nav .submenu-toggle');

            // Toggle mobile menu
            if (mobileMenuTrigger) {
                mobileMenuTrigger.addEventListener('click', function() {
                    mobileSidebar.classList.add('active');
                    this.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            }

            // Close mobile menu
            function closeMobileMenu() {
                if (mobileSidebar) {
                    mobileSidebar.classList.remove('active');
                }
                if (mobileMenuTrigger) {
                    mobileMenuTrigger.classList.remove('active');
                }
                document.body.style.overflow = '';

                // Close all submenus when closing mobile menu
                document.querySelectorAll('.mobile-nav li.open').forEach(li => {
                    li.classList.remove('open');
                    const arrow = li.querySelector('.arrow');
                    if (arrow) arrow.textContent = '+';
                });
            }

            if (mobileMenuClose) {
                mobileMenuClose.addEventListener('click', closeMobileMenu);
            }

            if (mobileMenuOverlay) {
                mobileMenuOverlay.addEventListener('click', closeMobileMenu);
            }

            // Mobile submenu toggle - Fixed version
            if (mobileSubmenuToggles.length > 0) {
                mobileSubmenuToggles.forEach(toggle => {
                    toggle.addEventListener('click', function(e) {
                        e.preventDefault();
                        e.stopPropagation();

                        const parent = this.parentElement;
                        const isOpen = parent.classList.contains('open');

                        // Close all other submenus
                        document.querySelectorAll('.mobile-nav li.open').forEach(openLi => {
                            if (openLi !== parent) {
                                openLi.classList.remove('open');
                                const arrow = openLi.querySelector('.arrow');
                                if (arrow) arrow.textContent = '+';
                            }
                        });

                        // Toggle current submenu
                        parent.classList.toggle('open');

                        // Toggle arrow
                        const arrow = this.querySelector('.arrow');
                        if (arrow) {
                            arrow.textContent = parent.classList.contains('open') ? '−' : '+';
                        }
                    });
                });
            }

            // Close mobile menu when clicking on regular links
            const mobileRegularLinks = document.querySelectorAll('.mobile-nav a:not(.submenu-toggle)');
            if (mobileRegularLinks.length > 0) {
                mobileRegularLinks.forEach(link => {
                    link.addEventListener('click', function() {
                        closeMobileMenu();
                    });
                });
            }

            // Close menu on escape key
            document.addEventListener('keydown', function(e) {
                if (e.key === 'Escape' && mobileSidebar && mobileSidebar.classList.contains('active')) {
                    closeMobileMenu();
                }
            });

            // Close menu when window is resized to desktop
            window.addEventListener('resize', function() {
                if (window.innerWidth >= 992 && mobileSidebar && mobileSidebar.classList.contains('active')) {
                    closeMobileMenu();
                }
            });

            // Prevent sidebar content scrolling from closing the menu
            if (mobileContainer) {
                mobileContainer.addEventListener('click', function(e) {
                    e.stopPropagation();
                });
            }
        });
    </script>
</div>

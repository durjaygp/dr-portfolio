<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="{{$setting->author}}">

    <title>@yield('title')</title>
    @yield('meta_tags')
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom colors based on your images. */
        :root {
            --color-primary: #1C457B; /* Deep Blue/Navy */
            --color-accent: #E5A358; /* Warm Gold/Orange */
            --color-text: #333333;
            --color-background: #F8F8F8;
        }
        .text-primary { color: var(--color-primary); }
        .bg-primary { background-color: var(--color-primary); }
        .border-primary { border-color: var(--color-primary); }
        .text-accent { color: var(--color-accent); }
        .bg-accent { background-color: var(--color-accent); }
        /* Smooth scroll behavior for the entire document */
        html {
            scroll-behavior: smooth;
        }
    </style>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('uploads/'.$setting->fav_icon) }}">

    @livewireStyles
</head>
<body class="bg-[var(--color-background)] text-[var(--color-text)]">


<!-- Your existing content -->
@livewire('components.navbar')

<main>
    {{ $slot }}
</main>

@livewire('components.footer')



@livewireScripts



<!-- Show content once JS is ready -->
<script>
    function initMobileMenu() {
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
    }


    // ✅ Initialize on page load
    document.addEventListener('DOMContentLoaded', initMobileMenu);

    // ✅ Re-initialize after Livewire navigation (SPA)
    document.addEventListener('livewire:navigated', initMobileMenu);

    // ✅ Re-initialize after Livewire component updates
    if (typeof Livewire !== 'undefined') {
        Livewire.hook('message.processed', initMobileMenu);
    }
</script>


</body>
</html>

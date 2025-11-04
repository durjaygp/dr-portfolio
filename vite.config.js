import { defineConfig } from "vite";
import laravel, { refreshPaths } from "laravel-vite-plugin";

export default defineConfig({
    plugins: [
        laravel({
            input: [
                "resources/css/bootstrap.min.css",
                "resources/css/slicknav.min.css",
                "resources/css/swiper-bundle.min.css",
                "resources/css/all.css",
                "resources/css/animate.css",
                "resources/css/magnific-popup.css",
                "resources/css/mousecursor.css",
                "resources/css/app.css", // your main app styles
                "resources/js/app.js", // your JS entry
            ],
            refresh: [
                ...refreshPaths,
                "app/Livewire/**",
                "app/Filament/**",
                "app/Providers/**",
            ],
        }),
    ],
});

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('services', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->string('slug');
            $table->text('image')->nullable();
            $table->text('icons')->nullable();
            $table->longText('main_content')->nullable();
            $table->longText('description')->nullable();
            $table->longText('faqs_header')->nullable();
            // SEO Content
            $table->longText('seo_description')->nullable();
            $table->longText('seo_tags')->nullable();
            $table->longText('seo_keywords')->nullable();
            $table->json('faqs')->nullable();

            // Content status
            $table->boolean('status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('services');
    }
};

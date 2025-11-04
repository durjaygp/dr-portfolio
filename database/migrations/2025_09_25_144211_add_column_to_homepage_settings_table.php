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
        Schema::table('homepage_settings', function (Blueprint $table) {
            $table->boolean('about_status')->nullable();

            $table->text('process_title')->nullable();
            $table->text('process_header')->nullable();
            $table->text('process_paragraph')->nullable();
            $table->text('process_button')->nullable();
            $table->text('process_button_url')->nullable();
            $table->json('process_step')->nullable();
            $table->boolean('process_status')->nullable();


            //Choose
            $table->text('choose_title')->nullable();
            $table->text('choose_header')->nullable();
            $table->text('choose_paragraph')->nullable();
            $table->json('choose_options')->nullable();
            $table->boolean('choose_status')->nullable();

            $table->text('testimonials_title')->nullable();
            $table->text('testimonials_header')->nullable();
            $table->text('testimonials_paragraph')->nullable();
            $table->boolean('testimonials_status')->nullable();

            $table->text('provide_title')->nullable();
            $table->text('provide_header')->nullable();
            $table->text('provide_paragraph')->nullable();
            $table->text('provide_video_link')->nullable();
            $table->text('provide_video_image')->nullable();
            $table->boolean('provide_status')->nullable();

            $table->text('team_title')->nullable();
            $table->text('team_header')->nullable();
            $table->text('team_paragraph')->nullable();
            $table->boolean('team_status')->nullable();

            $table->text('blog_title')->nullable();
            $table->text('blog_header')->nullable();
            $table->text('blog_paragraph')->nullable();
            $table->boolean('blog_status')->nullable();

            $table->text('contact_title')->nullable();
            $table->text('contact_header')->nullable();
            $table->text('contact_paragraph')->nullable();
            $table->boolean('contact_status')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('homepage_settings', function (Blueprint $table) {
            //
        });
    }
};

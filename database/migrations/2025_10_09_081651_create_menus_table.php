<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
//    public function up(): void
//    {
//        Schema::create('menus', function (Blueprint $table) {
//            $table->id();
//            $table->string('title');
//            $table->string('url');
//            $table->json('submenu')->nullable();
//            $table->boolean('status')->default(true);
//            $table->boolean('is_featured')->default(true);
//            $table->boolean('enable_livewire')->nullable();
//            $table->timestamps();
//        });
//    }
    public function up(): void
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->id();
            $table->foreignId('parent_id')->nullable()->constrained('menus')->cascadeOnDelete();
            $table->string('title');
            $table->string('url')->nullable();
            $table->string('icon')->nullable();
            $table->enum('type', ['custom', 'page', 'service'])->default('custom');
            $table->unsignedBigInteger('reference_id')->nullable(); // page_id or service_id
            $table->integer('order')->default(0);
            $table->boolean('status')->default(true);
            $table->boolean('is_featured')->default(false);
            $table->boolean('enable_livewire')->default(false);
            $table->timestamps();
        });
    }



    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('menus');
    }
};

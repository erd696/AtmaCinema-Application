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
        Schema::create('jadwal_tayang', function (Blueprint $table) {
            $table->id();
            $table->foreignId("id_film")->constrained("film")->onDelete("cascade");
            $table->foreignId("id_studio")->constrained("studio")->onDelete("cascade");
            $table->string("tanggal");
            $table->string("jam_tayang");
            $table->decimal("harga", 10, 2);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('jadwal_tayang');
    }
};
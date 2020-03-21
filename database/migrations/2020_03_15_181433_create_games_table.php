<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('games', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->string('steam')->nullable();
            $table->string('steam_info')->nullable();
            $table->string('origin')->nullable();
            $table->string('origin_info')->nullable();
            $table->string('uplay')->nullable();
            $table->string('uplay_info')->nullable();
            $table->string('epicgames')->nullable();
            $table->string('epicgames_info')->nullable();
            $table->string('gog')->nullable();
            $table->string('gog_info')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('games');
    }
}

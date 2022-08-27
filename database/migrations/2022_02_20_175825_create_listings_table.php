<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateListingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('listings', function (Blueprint $table) {
            $table->id();
            // we need a foreign id for the user
            // $table->foreignIdFor(User::class);
            $table->unsignedBigInteger('user_id'); 
            $table->string('title');
            $table->string('slug');
            $table->string('company');      
            $table->string('location');
            // we set to nullable if it should not be required   -  if the logo is not present we can us a placeholder image            
            $table->string('logo')->nullable();    
            $table->boolean('is_highlighted')->default(false);
            $table->boolean('is_active')->default(true);
            // the format of text is raw HTML
            $table->text('content');
            // redirect to link
            $table->string('apply_link');
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
        Schema::dropIfExists('listings');
    }
}

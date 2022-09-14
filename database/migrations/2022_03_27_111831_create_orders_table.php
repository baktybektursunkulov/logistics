<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('description');
            $table->unsignedInteger('x');
            $table->unsignedInteger('y');
            $table->unsignedInteger('z');
            $table->string('range');
            $table->unsignedInteger('cost');
            $table->text('from_text');
            $table->text('to_text');
            $table->unsignedBigInteger('from');
            $table->unsignedBigInteger('to');
            $table->foreignId('order_status_id')->default(\App\Models\OrderStatus::CREATED)
                ->constrained()->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreignId('truck_id')
                ->constrained()->cascadeOnUpdate()->cascadeOnDelete();
            $table->foreign(['from'])
                ->references('id')
                ->on('users')
                ->cascadeOnUpdate()
                ->cascadeOnDelete();
            $table->foreign(['to'])
                ->references('id')
                ->on('users')
                ->cascadeOnUpdate()
                ->cascadeOnDelete();
            $table->timestamp('applied_at')->nullable();
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
        Schema::dropIfExists('orders');
    }
}

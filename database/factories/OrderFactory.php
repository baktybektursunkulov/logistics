<?php

namespace Database\Factories;

use App\Models\OrderStatus;
use App\Models\Truck;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderFactory extends Factory
{
    private $i = 1;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $status = OrderStatus::inRandomOrder()->first()->id;
        $applied = ($status == OrderStatus::APPLIED) ? now()->subDays(rand(0, 7))->subHours(rand(1, 10)) : null;
        return [
            'name' => 'Product #' . $this->i,
            'description' => $this->faker->text,
            'x' => rand(2, 5),
            'y' => rand(2, 5),
            'z' => rand(2, 5),
            'range' => '2680 км',
            'cost' => 117800,
            'from_text' => 'Уральск',
            'to_text' => 'Алматы',
            'from' => User::findOrFail($this->i * 2)->id,
            'to' => User::findOrFail($this->i++ * 2 + 1)->id,
            'order_status_id' => $status,
            'applied_at' => $applied,
            'truck_id' => Truck::inRandomOrder()->first()->id,
            'created_at' => now()->subDays(rand(10, 300)),
        ];
    }
}

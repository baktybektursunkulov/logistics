<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class TruckFactory extends Factory
{
    private $i = 1;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => 'Truck #' . $this->i++,
            'x' => rand(5, 10),
            'y' => rand(5, 10),
            'z' => rand(5, 10),
        ];
    }
}

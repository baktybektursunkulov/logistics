<?php

namespace Database\Seeders;

use App\Models\OrderStatus;
use Illuminate\Database\Seeder;

class OrderStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        OrderStatus::insert([
            [
                'name' => 'Created',
            ],
            [
                'name' => 'Applied',
            ],
            [
                'name' => 'Rejected',
            ],
            [
                'name' => 'Delivered',
            ],
        ]);
    }
}

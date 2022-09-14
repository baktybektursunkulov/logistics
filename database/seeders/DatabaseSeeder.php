<?php

namespace Database\Seeders;

use App\Models\Truck;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use TCG\Voyager\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            VoyagerDatabaseSeeder::class,
            ]);
        $roles = Role::where('name', 'admin')->get();
        User::create([
            'name' => 'Admin',
            'email' => 'admin@admin.kz',
            'email_verified_at' => now(),
            'password' => Hash::make('123456789'),
            'remember_token' => Str::random(10),
        ])->roles()->attach($roles);

        $roles = Role::where('name', 'user')->get();
        User::insert([
            [
                'name' => 'User',
                'email' => 'user@user.kz',
                'email_verified_at' => now(),
                'password' => Hash::make('123456789'),
                'remember_token' => Str::random(10),
            ],
        ]);
         \App\Models\User::factory(10)->create();
         foreach (User::where('id', '>', 1)->get() as $user) {
             $user->roles()->attach($roles);
         }
         $this->call([
             OrderStatusSeeder::class,
             TruckSeeder::class,
             OrderSeeder::class,
         ]);
    }
}

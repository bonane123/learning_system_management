<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->where('email', 'ndbonane@gmail.com')->update([
            'password' => Hash::make('111'),
        ]);

        DB::table('users')->where('email', 'instructor@gmail.com')->update([
            'password' => Hash::make('111'),
        ]);

        DB::table('users')->where('email', 'user@gmail.com')->update([
            'password' => Hash::make('111'),
        ]);
    }
}

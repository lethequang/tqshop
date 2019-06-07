<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		$faker = Faker::create();

		$limit = 50;

		for ($i = 0; $i < $limit; $i++) {
			DB::table('products')->insert([
				'name' => $faker->word,
				'description' => $faker->sentence,
				'content' => $faker->paragraph,
				'price' => $faker->biasedNumberBetween($min = 150000, $max = 600000, $function = 'sqrt'),
				'quantity' => $faker->biasedNumberBetween($min = 30, $max = 200, $function = 'sqrt'),
				'category_id' => $faker->randomElement($array = array('2', '3', '5', '6')),
				'brand_id' => $faker->randomElement($array = array('1', '2', '3', '4', '5')),
				'status' => 1,
				'is_hot' => 0,
				'is_deleted' => 0
			]);
		}
    }
}

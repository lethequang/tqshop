<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ProductImageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		$faker = Faker::create();

		$limit = 20;

		for ($i = 0; $i < $limit; $i++) {
			DB::table('product_images')->insert([
				'product_id' => $faker->biasedNumberBetween($min = 1, $max = 20, $function = 'sqrt'),
				'image' => $faker->image('public/storage/images/products', 750, 972, null, false),
				'image_url' => 'http://beeshop.test/storage/images/products/',
			]);
		}
    }
}

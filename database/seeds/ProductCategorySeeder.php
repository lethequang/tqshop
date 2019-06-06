<?php

use Illuminate\Database\Seeder;

class ProductCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		$shops = [
			[
				'category_name' => 'Quần',
				'children' => [
					[
						'category_name' => 'Áo khoác nỉ',
						'children' => [
							['category_name' => ''],
							['category_name' => 'DC Comic Book'],
						],
					],
					[
						'category_name' => 'Áo',
						'children' => [
							['category_name' => 'Computer Science'],
						],
					],
				],
			],
		];
		foreach($shops as $shop)
		{
			\App\http\Models\ProductCategory::create($shop);
		}
    }
}

<?php

namespace App\http\Models;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
	/**
	 * The table associated with the model.
	 *
	 * @var string
	 */
	protected $table = 'product_categories';

	public function products()
	{
		return $this->hasMany(ProductCategory::class);
	}

	public function getTopCategories() {
		$scope = ["{$this->table}.*"];
		$query = self::select($scope)
			->leftJoin('products', "{$this->table}.product_id", 'products.id')
			->leftJoin('order_detail', 'products.id', 'order_detail.product_id');
		$result = $query
			->groupBy('product_categories.id')
			->get();
		return $result;
	}
}

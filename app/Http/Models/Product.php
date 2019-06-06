<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	/**
	 * The table associated with the model.
	 *
	 * @var string
	 */
	protected $table = 'products';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['name', 'description', 'content', 'price', 'promotion_price', 'quantity', 'category_id', 'brand_id', 'slug', 'status', 'is_hot', 'is_deleted', 'created_by', 'updated_by'];

	public function buildQuery($scope) {
		return self::select($scope)
			->leftJoin('product_categories', "{$this->table}.category_id", 'product_categories.id')
			->leftjoin('brands', "{$this->table}.brand_id", 'brands.id');
	}

	public function getNewProducts() {
		$scope = ['products.*', 'product_categories.name', 'brands.name'];

		$products = $this->buildQuery($scope)->where("{$this->table}.is_hot", 1);

		return $products->get();
	}

}

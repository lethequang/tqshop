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


	public function images()
	{
		return $this->hasMany(ProductImage::class);
	}

	public function buildQuery($scope) {
		return self::select($scope)
			->leftJoin('product_images', "{$this->table}.id", 'product_images.product_id');
	}

	public function getProducts($filters) {
		$scope = ['products.*'];

		$products = $this->buildQuery($scope);

		return $this->responseResult($products, $filters);
	}

	public function responseResult($result, $filters) {
		$take = ! (isset($inputs['limit'])) ? 10 : $filters['limit'];
		$skip = ! (isset($inputs['offset'])) ? 0 : $filters['offset'];
		$order = ! (isset($inputs['order'])) ? 'desc' : $filters['order'];
		$sort = ! (isset($inputs['sort'])) ? 'id' : $filters['sort'];

		$total = $result->count();
		$data = $result->skip($skip)
			->take($take)
			->orderBy($sort, $order)
			->get();

		return [
			'total' => $total,
			'data' => $data
		];
	}

}

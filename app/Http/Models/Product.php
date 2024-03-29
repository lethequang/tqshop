<?php

namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

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


	public function images() {
		return $this->hasMany(ProductImage::class);
	}

	public function orderDetail() {
		return $this->hasMany(OrderDetail::class);
	}

	public function productCategory() {
		return $this->belongsTo(ProductCategory::class);
	}
	/*
	 * Scope status
	 */
	public function scopeActive($query, $status = 1) {
		return $query->where("{$this->table}.status", $status);
	}

	/*
	 * Scope is'n hot
	 */
	public function scopeIsHot($query, $isHot = 0) {
		return $query->where("{$this->table}.is_hot", $isHot);
	}

	/*
	 * Scope is'n deleted
	 */
	public function scopeIsDeleted($query, $isDeleted = 0) {
		return $query->where("{$this->table}.is_deleted", $isDeleted);
	}

	public function scopeIsPromotion($query) {
		return $query->whereNotNull("{$this->table}.promotion_price");
	}

	/*
	 * Start query
	 */
	public function buildQuery($scope) {
		return self::select($scope)
			->leftJoin('product_images', "{$this->table}.id", 'product_images.product_id')
			->leftJoin('order_detail', "{$this->table}.id", 'order_detail.product_id');
	}

	/*
	 * Get list products
	 */
	public function getProductsForFilter($scope, $filters = false) {
		$products = $this->buildQuery($scope)
			->active()
			->isDeleted()
			->withCount('orderDetail')
			->with('images')
			->groupBy('products.id');

		if (isset($filters['is_promotion'])) {
			$products->isPromotion();
		}

		return $this->responseResult($products, $filters);

	}

	/*
	 * Get top new products
	 */
	public function getTopNewProducts() {

		$scope = ['products.*'];

		return $this->getProductsForFilter($scope);
	}

	/*
	 * Get top seller products
	 */
	public function getTopSellerProducts() {

		$scope = ['products.*'];

		$filters = [
			'sort' => 'order_detail_count'
		];

		return $this->getProductsForFilter($scope, $filters);
	}

	/*
	 * get top promotion products
	 */
	public function getTopPromotionProducts() {

		$promotionRatio = DB::raw('(price - promotion_price) * 100 / price as promotion_ratio');
		$scope = ['products.*', $promotionRatio];

		$filters = [
			'is_promotion' => 1,
			'sort' => 'promotion_ratio'
		];

		 return $this->getProductsForFilter($scope, $filters);
	}


	/**
	 * Get top category
	 */
	public function getTopProductCategories() {

		$categoryCount = DB::raw('count(order_detail.product_id) as order_category_count');
		$scope = ['product_categories.*', $categoryCount];

		$products = self::select($scope)
			->rightJoin('product_categories', "{$this->table}.category_id", 'product_categories.id')
			->leftJoin('order_detail', "{$this->table}.id", 'order_detail.product_id')
			->where('parent_id', '<>', 0)
			->groupBy('product_categories.id');

		$filters = [
			'sort' => 'order_category_count'
		];

		return $this->responseResult($products, $filters);
	}

	public function getDetails($id) {
		$scope = ["{$this->table}.*"];
		$product = self::select($scope)
			->leftJoin('product_images', "{$this->table}.id", 'product_images.product_id')
			->leftJoin('product_features_values', "{$this->table}.id", 'product_features_values.product_id')
			->leftJoin('product_features', 'product_features_values.product_feature_id', 'product_features.id')
			;
	}

	/*
	 * Format result
	 */
	public function responseResult($result, $filters) {
		$take = ! (isset($filters['limit'])) ? 10 : $filters['limit'];
		$skip = ! (isset($filters['offset'])) ? 0 : $filters['offset'];
		$order = ! (isset($filters['order'])) ? 'desc' : $filters['order'];
		$sort = ! (isset($filters['sort'])) ? 'created_at' : $filters['sort'];

		$total = $result->get()->count();
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

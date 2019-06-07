<?php

namespace App\Http\Controllers\Shop;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Models\Product;

class HomeController extends Controller
{

	/**
	 * @var
	 */
	protected $data = [];

	protected $product;

	public function __construct(Product $product)
	{
		$this->product = $product;

	}

	public function index() {
		$filters = [
			'limit' => 10,
			'sort' => 'created_at'
		];
		$newProducts = $this->product->getProducts($filters);

		return $newProducts;
	}
}

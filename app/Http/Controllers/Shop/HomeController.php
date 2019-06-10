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
		$this->data['newProducts'] = $this->product->getNewProducts();
		$this->data['bestSellerProducts'] = $this->product->getBestSellerProducts();
		return $this->data;
//		return view('shop.index', $this->data);
	}


}

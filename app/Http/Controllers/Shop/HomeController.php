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
		$this->data['topNewProducts'] = $this->product->getTopNewProducts();
		$this->data['topPromotionProducts'] = $this->product->getTopPromotionProducts();
		$this->data['topSellerProducts'] = $this->product->getTopSellerProducts();
		return $this->data;
//		return view('shop.index', $this->data);
	}


}

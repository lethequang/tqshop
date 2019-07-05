<?php

namespace App\Helpers;

class Cart
{
	/**
	 * @var null
	 */
	public $items = null;

	/**
	 * @var int
	 */
	public $totalQty = 0;

	/**
	 * @var int
	 */
	public $totalPrice = 0;


	/**
	 * Cart constructor.
	 * @param $oldCart
	 */
	public function __construct($oldCart){
		if ($oldCart) {
			$this->items = $oldCart->items;
			$this->totalQty = $oldCart->totalQty;
			$this->totalPrice = $oldCart->totalPrice;
		}
	}

	/*
	 * Thêm 1 product
	 */
	public function add($item, $number, $features = array()){

		$cart = [
			'qty'=> $number,
			'subPrice' => 0,
			'item' => $item,
			'feature' => $features
		];

		if (empty($features)) {
			$cart['subPrice'] = $item->price * $cart['qty'];
		} else {
			$priceFeature = null;
			foreach ($features as $feature) {
				$priceFeature += $feature['price'];
			}
			$cart['subPrice'] = $item->price * $cart['qty'] + $number * $priceFeature;
		}

		$this->items[] = $cart;
		$this->totalQty += $number;
		$this->totalPrice += $cart['subPrice'];
	}

	/*
	 * Xóa 1 product
	 */
	public function remove($key) {
		$this->totalQty -= $this->items[$key]['qty'];
		$this->totalPrice -= $this->items[$key]['subPrice'];
		unset($this->items[$key]);
	}

}

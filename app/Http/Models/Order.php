<?php

namespace App\http\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	/**
	 * The table associated with the model.
	 *
	 * @var string
	 */
	protected $table = 'orders';


	public function orderDetail()
	{
		return $this->hasMany(OrderDetail::class);
	}
}

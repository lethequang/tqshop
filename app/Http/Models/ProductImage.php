<?php

namespace App\http\Models;

use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
	/**
	 * The table associated with the model.
	 *
	 * @var string
	 */
	protected $table = 'product_images';


	public function product()
	{
		return $this->belongsTo(Product::class, 'product_id');
	}
}

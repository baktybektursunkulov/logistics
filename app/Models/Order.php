<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function receiver()
    {
        return $this->belongsTo(User::class, 'to', 'id');
    }
    public function truck()
    {
        return $this->belongsTo(Truck::class);
    }
    public function status()
    {
        return $this->belongsTo(OrderStatus::class, 'order_status_id');
    }
    public function sender()
    {
        return $this->belongsTo(User::class, 'from', 'id');
    }
}

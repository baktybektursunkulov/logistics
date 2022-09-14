<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\User;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function dashboard()
    {
        if (auth()->user()->roles()->where('id', User::CLIENT_ROLE)->count()) {
            return redirect()->route('orders.create');
        }
        return redirect()->route('panel');
    }

    public function panel()
    {
        if (!auth()->user()->roles()->where('id', User::ADMIN_ROLE)->count())
            return redirect()->back();

        $forMonth = Order::where('created_at', '>', now()->subMonth())->sum('cost');
        $forYear = Order::where('created_at', '>', now()->subYear())->sum('cost');
        return view('panel', compact('forMonth', 'forYear'));
    }
}

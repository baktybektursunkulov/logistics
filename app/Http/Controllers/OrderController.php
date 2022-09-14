<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateOrderRequest;
use App\Http\Requests\UpdateOrderRequest;
use App\Models\Order;
use App\Models\OrderStatus;
use App\Models\Truck;
use App\Models\User;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Role;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (auth()->user()->roles()->where('id', User::CLIENT_ROLE)->count()) {
            $orders = Order::where('from', auth()->id())->with(['receiver', 'truck', 'status'])->get();
        }
        else {
            $orders = Order::all()->load(['receiver', 'sender', 'truck', 'status']);
        }
        return view('orders', compact('orders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companies = User::where('id', '<>', auth()->id())->whereHas('roles', function ($q) {
            return $q->where('id', User::CLIENT_ROLE);
        })->get();
        $trucks = Truck::all();
        return view('dashboard', compact('companies', 'trucks'));
    }

    /**
     * @param CreateOrderRequest $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(CreateOrderRequest $request)
    {
        if ($this->capacityError($request->truck_id, $request->x, $request->y, $request->z)) {
            return redirect()->back()->withInput($request->input())->withErrors('Item won\'t fit');
        }
        $data = $request->validated();
        $data['from'] = auth()->id();
        Order::create($data);
        return redirect()->route('orders.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * @param UpdateOrderRequest $request
     * @param Order $order
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UpdateOrderRequest $request, Order $order)
    {
        $order->order_status_id = $request->status_id;
        if ($order->order_status_id == OrderStatus::APPLIED) {
            $order->applied_at = now();
        }
        $order->save();
        return redirect()->route('orders.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    }

    private function capacityError(int $truck_id, int $x, int $y, int $z)
    {
        $truck = Truck::findOrFail($truck_id);
        return $truck->x * $truck->y * $truck->z < $x * $y * $z;
    }

    private function calculateCapacity(Truck $truck, int $x, int $y, int $z)
    {
//        if ($truck->x < $x || $truck->y < $y || $truck->z < $z)
    }
}

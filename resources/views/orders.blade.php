<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Orders') }}
        </h2>
    </x-slot>
    <div>
        <div class="accordion" id="accordionExample">
            @foreach($orders as $order)
                <div class="accordion-item">
                    <h2 class="accordion-header" id="heading{{$order->id}}">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{$order->id}}" aria-expanded="true" aria-controls="collapse{{$order->id}}">
                            {{$order->name}}
                        </button>
                    </h2>
                    <div id="collapse{{$order->id}}" class="accordion-collapse collapse" aria-labelledby="heading{{$order->id}}" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <div>
                                <span class="btn btn-secondary">Receiver: {{$order->receiver->name}}</span>
                                @if($order->order_status_id == \App\Models\OrderStatus::APPLIED)
                                    <span class="btn btn-secondary">Applied at: {{date('d.m.Y H:i', strtotime($order->applied_at))}}</span>
                                @endif
                                @if(auth()->user()->roles()->where('id', \App\Models\User::CLIENT_ROLE)->count())
                                    <span class="btn btn-info">Status: {{$order->status->name}}</span>
                                @else
                                    <span class="btn btn-secondary">Sender: {{$order->sender->name}}</span>
                                    <form action="{{route('orders.update', ['order' => $order])}}" method="post" class="my-2">
                                        @csrf
                                        @method('PUT')
                                        <div class="d-flex">
                                            <select class="form-control w-25 mr-2" name="status_id">
                                                @foreach(\App\Models\OrderStatus::all() as $status)
                                                    <option {{($status->id == $order->order_status_id) ? 'selected' : ''}} value="{{$status->id}}">{{$status->name}}</option>
                                                @endforeach
                                            </select>
                                            <input type="submit" class="btn btn-primary">
                                        </div>
                                    </form>
                                @endif
                            </div>
                            <div>
                                <span>Truck: {{$order->truck->name}}</span>
                            </div>
                            <div>
                                <span>Size: {{$order->x}}x{{$order->y}}x{{$order->z}}m</span>
                            </div>
                            <div>
                                @include('components.map', ['elId' => 'map'.$order->id, 'id' => $order->id, 'from' => $order->from_text, 'to' => $order->to_text, 'applied' => $order->applied_at, 'is_applied' => $order->order_status_id == \App\Models\OrderStatus::APPLIED])
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</x-app-layout>

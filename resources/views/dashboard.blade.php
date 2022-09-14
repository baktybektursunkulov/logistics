<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Create Order') }}
        </h2>
    </x-slot>
    <div class="container">
        @if ($errors->any())
            <div class="alert alert-danger mt-3">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="{{route('orders.store')}}" method="post">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="my-2">
                        <label>Name</label>
                        <input class="form-control" type="text" name="name" value="{{old('name')}}">
                    </div>
                    <div class="my-2">
                        <label>Company</label>
                        <select class="form-control" name="to">
                            @foreach($companies ?? [] as $company)
                                <option value="{{$company->id}}">{{$company->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="my-2">
                        <label>Truck</label>
                        <select class="form-control" name="truck_id">
                            @foreach($trucks ?? [] as $truck)
                                <option value="{{$truck->id}}">{{$truck->name}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="my-2">
                        <label>Height</label>
                        <input class="form-control" type="number" name="x" value="{{old('x')}}">
                    </div>
                    <div class="my-2">
                        <label>Width</label>
                        <input class="form-control" type="number" name="y" value="{{old('y')}}">
                    </div>
                    <div class="my-2">
                        <label>Length</label>
                        <input class="form-control" type="number" name="z" value="{{old('z')}}">
                    </div>
                </div>
            </div>
            <div class="my-2">
                @include('components.map',['elId' => 'map', 'id' => false])
            </div>
            <div class="my-2">
                <label>Description</label>
                <textarea name="description" rows="5" class="form-control">{{old('description')}}</textarea>
            </div>
            <div class="my-2">
                <input type="submit" class="btn btn-primary">
            </div>
        </form>
    </div>
</x-app-layout>

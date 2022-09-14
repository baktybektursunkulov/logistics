<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Panel') }}
        </h2>
    </x-slot>
    <div class="py-2 d-flex">
        <div class="card card-body mx-2">
            <h4>Profit for year</h4>
            <div class="alert alert-success">
                {{$forYear}}
            </div>
        </div>
        <div class="card card-body mx-2">
            <h4>Profit for month</h4>
            <div class="alert alert-success">
                {{$forMonth}}
            </div>
        </div>
    </div>
</x-app-layout>

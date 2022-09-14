<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateOrderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|string|max:255',
            'description' => 'required|string|max:500',
            'x' => 'required|integer|min:1',
            'y' => 'required|integer|min:1',
            'z' => 'required|integer|min:1',
            'range' => 'required|string|max:255',
            'cost' => 'required|integer|min:1',
            'from_text' => 'required|string|max:255',
            'to_text' => 'required|string|max:255',
            'to' => 'required|exists:users,id',
            'truck_id' => 'required|exists:trucks,id',
        ];
    }
}

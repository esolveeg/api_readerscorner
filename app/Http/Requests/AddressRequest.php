<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AddressRequest extends FormRequest
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
            'building' => 'required|max:250',
            'title' => 'nullable|max:250',
            'street' => 'required|max:250',
            'state' => 'required|max:250',
            'floor' => 'nullable|max:250',
            'phone' => 'nullable|max:250',
            'apartment' => 'nullable|max:250',
            'city_id' => 'required|numeric',
        ];
    }
}

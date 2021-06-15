<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
class AdminProductRequest extends FormRequest
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
            "title" => [
                'required',
                'max:255',
                Rule::unique('products', 'title')->ignore($this->id)
            ],
            "slug" => [
                'required',
                'max:255',
                Rule::unique('products', 'slug')->ignore($this->id)
            ],
            "thumbnail" => 'nullable',
            "image" => 'nullable',
            "isbn" => [
                'required',
                'max:255',
                Rule::unique('products', 'isbn')->ignore($this->id)
            ],
            "description" => 'nullable',
            "categories" => 'nullable|array',
            "author_id" => 'nullable',
            "language_id" => 'nullable',
            "age_id" => 'nullable',
            "price" => 'required',
            "old_price" => 'nullable',
            "website" => 'nullable',
        ];
    }
}

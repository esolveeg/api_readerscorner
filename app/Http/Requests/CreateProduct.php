<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateProduct extends FormRequest
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
     * Get the  validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            "title" => "required|max:255",
            "slug" => "required|max:255|unique:products",
            "thumbnail" => "nullable",
            "image" => "nullable",
            "isbn" => "required|max:255|unique:products",
            "description" => "nullable|max:255",
            "author_id" => "nullable|max:255",
            "language_id" => "nullable|max:255",
            "age_id" => "nullable|max:255",
            "price" => "required",
            "old_price" => "nullable",
            "website" => "nullable",
        ];
    }
}

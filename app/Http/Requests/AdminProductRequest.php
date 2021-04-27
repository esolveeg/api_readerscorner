<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

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
            "title" => 'required|unique:products|max:255',
            "slug" => 'required|unique:products|max:255',
            "thumbnail" => 'nullable',
            "image" => 'nullable',
            "isbn" => 'required|unique:products|max:255',
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

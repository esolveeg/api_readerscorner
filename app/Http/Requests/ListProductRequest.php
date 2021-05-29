<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ListProductRequest extends FormRequest
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
            "category" => "nullable",
            "sale" => "nullable",
            "author" => "nullable",
            "language" => "nullable",
            "key" => "nullable",
            "page" => "nullable",
            "age" => "nullable",
            "search" => "nullable",
            "sort" => "nullable",
        ];
    }
}

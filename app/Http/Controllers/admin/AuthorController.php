<?php

namespace App\Http\Controllers\admin;

use App\Author;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AuthorController extends Controller
{
    public function create(Request $request){
        //validate product request
        $rules = [
            "name" => "required|max:255",
            "author_slug" => "required|max:255|unique:authors",
            "top" => "required",
        ];
        $validation = Validator::make($request->all(),$rules);
        if($validation->fails()){
            return response()->json($validation->errors() , 400);
        } 
        $author = Author::create($validation->validated());
        return response()->json($author);

    }
}

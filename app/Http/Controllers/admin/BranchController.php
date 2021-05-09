<?php

namespace App\Http\Controllers\admin;

use App\Branch;
use App\Http\Controllers\Controller;
use App\QueryFilters\globals\SearchName;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;

class BranchController extends Controller
{
    public function get(Request $request)
    {
        //check if page and show dosn't come with the request to set them to initial vals
        $request->show = !isset($request->show) ? 10 : intval($request->show);
        $request->page = !isset($request->page)  ? 1 : intval($request->page);
        $offset =   $request->show * ($request->page - 1);
        // dd($offset);
        
        $pipeline = app(Pipeline::class)->send(Branch::query()->select(['branches.id','branches.name'])
        ->orderBy('branches.created_at', 'DESC'))->through([
            SearchName::class
            ])->thenReturn();
        // dd($pipeline);
        $count = $pipeline->count();
        $items = $pipeline->skip($offset)->take($request->show)->get();
        // dd($count); 
        return response()->json(['items' => $items , 'total' => $count]);
    }
    public function find($id)
    {
        return Branch::find($id);
    }
    public function create(Request $request)
    {
        //validate name
        if(!isset($request->name)){
            return response()->json('name is required' , 400);
        }
        return Branch::create(['name' => $request->name]);

    }
    public function update(Request $request , $id)
    {
        //validate name
        if(!isset($request->name)){
            return response()->json('name is required' , 400);
        }
        $branch = Branch::find($id);
        $branch->name = $request->name;
        $branch->save();
        return $branch;
    }
}

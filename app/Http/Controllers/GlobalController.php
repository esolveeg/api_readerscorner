<?php

namespace App\Http\Controllers;

use App\Age;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GlobalController extends Controller
{
    public function delete($table , $id)
    {
        $record = DB::table($table)->where('id' , $id);
        if(count($record->get()) == 0){
            return response()->json('Sorry !this record can\'t be found');
        }
        $record->delete();
        return response()->json('Deleted Sucessfully');

    }
    public function ages()
    {
        $ages = Age::all();
        return response()->json($ages);

    }
}

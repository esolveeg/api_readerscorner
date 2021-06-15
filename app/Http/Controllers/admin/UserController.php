<?php

namespace App\Http\Controllers\admin;

use App\Branch;
use App\Http\Controllers\Controller;
use App\QueryFilters\globals\BranchFilter;
use App\QueryFilters\globals\RoleFilter;
use App\QueryFilters\user\SearchFilter;
use App\Role;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function get(Request $request)
    {
        //check if page and show dosn't come with the request to set them to initial vals
        $request->show = !isset($request->show) ? 10 : intval($request->show);
        $request->page = !isset($request->page)  ? 1 : intval($request->page);
        $offset =   $request->show * ($request->page - 1);
        // dd($offset);
        
        $pipeline = app(Pipeline::class)->send(User::query()->select(['users.name','users.id','users.created_at' , 'branches.name As branch' ,'roles.name As role' , 'branches.id AS branch_id' , 'users.role_id' ,'users.email' , 'users.phone'])
        ->leftJoin('roles', 'role_id', '=', 'roles.id')
        ->leftJoin('branches', 'users.branch_id', '=', 'branches.id')
        ->orderBy('users.created_at', 'DESC'))->through([
            RoleFilter::class,
            BranchFilter::class,
            SearchFilter::class,
        ])->thenReturn();
        // dd($pipeline);
        $count = $pipeline->count();
        $items = $pipeline->skip($offset)->take($request->show)->get();
        // dd($count); 
        return response()->json(['items' => $items , 'total' => $count]);
    }
    public function me(Request $request)
    {
        $user = User::select(['id' , 'name' , 'email' , 'role_id' , 'branch_id'])->find($request->user()->id);
        $role = Role::select(['id' , 'name'])->find($user->role_id);
        $branch = Branch::select(['id' , 'name'])->find($user->branch_id);
        $user->role = $role;
        $user->branch = $branch;
        // dd($user);
        return $user;
    }
    public function logout(Request $request)
    {
        DB::table('oauth_access_tokens')
        ->where('user_id', $request->user()->id)
        ->update([
            'revoked' => true
        ]);
        return response()->json('logged out sucessfully');
    }
}

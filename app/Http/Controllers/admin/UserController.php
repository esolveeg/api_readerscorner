<?php

namespace App\Http\Controllers\admin;

use App\Branch;
use App\Http\Controllers\Controller;
use App\Role;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
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

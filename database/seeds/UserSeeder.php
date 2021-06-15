<?php

use App\Address;
use App\City;
use App\User;
use Illuminate\Database\Seeder;
use Laravel\Passport\Client;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $userArr = ['name' => 'ahmed' , 'phone' => '01022052541' , 'email' => 'ahmed@readerscorner.co' , 'password' => bcrypt('123456')];
        $adminArr = ['name' => 'admin' , 'phone' => '012022052542' , 'email' => 'admin@readerscorner.co' , 'password' => bcrypt('123456') , 'role_id' => 1 , 'admin' => true];
        $websiteArr = ['name' => 'website' , 'phone' => '0120220525421' , 'email' => 'website@readerscorner.co' , 'password' => bcrypt('123456') , 'role_id' => 2 ,'branch_id' => 1, 'admin' => true];
        $posArr1 = ['name' => 'uptown' , 'phone' => '012022052549' , 'email' => 'uptown@readerscorner.co' , 'password' => bcrypt('123456') , 'role_id' => 3 , 'branch_id' => 3  , 'admin' => true];
        $posArr2 = ['name' => 'point 90' , 'phone' => '012022052541' , 'email' => 'point@readerscorner.co' , 'password' => bcrypt('123456') , 'role_id' => 3 , 'branch_id' => 4  , 'admin' => true];
        $client = [
            'name' => 'Laravel Password Grant Client',
            'secret' => 'g4gbQhrlY99Ynx9Fuh2XcxSq4bR2AaG56qLIfqAY',
            'provider' => 'users',
            'redirect' => 'http://localhost',
            'revoked' =>0,
            'personal_access_client' => 0,
            'password_client' => 1,
        ];

        Client::create($client);
        $user = User::where('email' , $userArr['email'])->first();
        User::create($adminArr);
        User::create($posArr1);
        User::create($posArr2);
        User::create($websiteArr);
        if(!$user){
            $user = User::create($userArr);
        }
        $addresses = [
            [
                'building' => '36A',
                'street' => 'Nozha street',
                'state' => 'El Nozha',
                'floor' => '2',
                'phone' => '01022052546',
                'apartment' => '6',
                'city_id' => City::where('name' , 'cairo')->first()->id,
            ],
            [
                'building' => 'Villa 25',
                'street' => 'mohandeseen village',
                'state' => 'Alexandria',
                'phone' => '01022052542',
                'city_id' => City::where('name' , 'alexandria')->first()->id,
            ],
        ];
        foreach($addresses as $address){
            $address['title'] = extractTitleFromAddress($address);
            $address['user_id'] = $user->id;
            Address::create($address);
        }

    }
}

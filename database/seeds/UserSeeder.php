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
        $userArr = ['name' => 'ahmed' , 'phone' => '01022052546' , 'email' => 'ahmed@readerscorner.co' , 'password' => bcrypt('123456')];
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

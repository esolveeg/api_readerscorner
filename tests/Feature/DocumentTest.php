<?php

namespace Tests\Feature;

use App\Branch;
use App\Document;
use App\DocumentProduct;
use App\Product;
use App\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

use function PHPUnit\Framework\assertTrue;

class DocumentTest extends TestCase
{
    


/**
      * A basic feature test example.
      *
      * @return void
      */
//     public function testOrder()
//     {
//         $user = User::where('email' , 'admin@readerscorner.co')->first();
//         $branchId = 1;
//         $data = [
//             'type' => 0 ,
//             'branch_id' => $branchId,
//         ];
//         $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
//         $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
//         $response->assertStatus(200);
//         $doc = Document::orderBy('created_at' , 'DESC')->first();
//         $currents = [];
//         foreach($products as $pr){
//             $rec = [
//                 'isbn' => $pr->isbn,
//                 'qty' => 20,
//                 'doc' => $doc->id,
//             ];


//             $currentQty = getItemStock($pr->id , $branchId);
//             $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
//             $response->assertStatus(200);
//             //get current stock
//             array_push($currents , ["product_id" => $pr->id , 'qty' => $currentQty]);
//             //create doc product
//         }
//         // dd($currents);
//         $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
//         $response->assertStatus(200);
//         foreach($currents as $current){
//             $stock = getItemStock($current['product_id'] , $branchId);
//             // dd([$current['qty'] - 20 , intVal($stock)]);
//             assertTrue($current['qty'] - 20 === intVal($stock) );
//         }
//     }
// //[(-)[0 : sell , 1 : buy return  ] , (+)[2 : buy , 3 : sell return ], (=)[4 : inventory , 5 : define , 6 : first balance] , (+ , -)[7 : transactions]]
//     public function testBuyReturn()
//     {
//         $user = User::where('email' , 'admin@readerscorner.co')->first();
//         $branchId = 1;
//         $data = [
//             'type' => 1,
//             'branch_id' => $branchId,
//         ];
//         $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
//         $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
//         $response->assertStatus(200);
//         $doc = Document::orderBy('created_at' , 'DESC')->first();
//         $currents = [];
//         foreach($products as $pr){
//             $rec = [
//                 'isbn' => $pr->isbn,
//                 'qty' => 20,
//                 'doc' => $doc->id,
//             ];


//             $currentQty = getItemStock($pr->id , $branchId);
//             $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
//             $response->assertStatus(200);
//             //get current stock
//             array_push($currents , ["product_id" => $pr->id , 'qty' => $currentQty]);
//             //create doc product
//         }
//         // dd($currents);
//         $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
//         $response->assertStatus(200);
//         foreach($currents as $current){
//             $stock = getItemStock($current['product_id'] , $branchId);
//             // dd([$current['qty'] - 20 , intVal($stock)]);
//             assertTrue($current['qty'] - 20 === intVal($stock) );
//         }
//     }


//     public function testBuy()
//     {
//         $user = User::where('email' , 'admin@readerscorner.co')->first();
//         $branchId = 1;
//         $data = [
//             'type' => 2,
//             'branch_id' => $branchId,
//         ];
//         $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
//         $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
//         $response->assertStatus(200);
//         $doc = Document::orderBy('created_at' , 'DESC')->first();
//         $currents = [];
//         foreach($products as $pr){
//             $rec = [
//                 'isbn' => $pr->isbn,
//                 'qty' => 20,
//                 'doc' => $doc->id,
//             ];


//             $currentQty = getItemStock($pr->id , $branchId);
//             $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
//             $response->assertStatus(200);
//             //get current stock
//             array_push($currents , ["product_id" => $pr->id , 'qty' => $currentQty]);
//             //create doc product
//         }
//         // dd($currents);
//         $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
//         $response->assertStatus(200);
//         foreach($currents as $current){
//             $stock = getItemStock($current['product_id'] , $branchId);
//             // dd([$current['qty'] - 20 , intVal($stock)]);
//             assertTrue($current['qty'] + 20 === intVal($stock) );
//         }
//     }

//     //[(-)[0 : sell , 1 : buy return  ] , (+)[2 : buy , 3 : sell return ], (=)[4 : inventory , 5 : define , 6 : first balance] , (+ , -)[7 : transactions]]
//     public function testSellReturn()
//     {
//         $user = User::where('email' , 'admin@readerscorner.co')->first();
//         $branchId = 1;
//         $data = [
//             'type' => 3,
//             'branch_id' => $branchId,
//         ];
//         $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
//         $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
//         $response->assertStatus(200);
//         $doc = Document::orderBy('created_at' , 'DESC')->first();
//         $currents = [];
//         foreach($products as $pr){
//             $rec = [
//                 'isbn' => $pr->isbn,
//                 'qty' => 20,
//                 'doc' => $doc->id,
//             ];


//             $currentQty = getItemStock($pr->id , $branchId);
//             $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
//             $response->assertStatus(200);
//             //get current stock
//             array_push($currents , ["product_id" => $pr->id , 'qty' => $currentQty]);
//             //create doc product
//         }
//         // dd($currents);
//         $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
//         $response->assertStatus(200);
//         foreach($currents as $current){
//             $stock = getItemStock($current['product_id'] , $branchId);
//             // dd([$current['qty'] - 20 , intVal($stock)]);
//             assertTrue($current['qty'] + 20 === intVal($stock) );
//         }
//     }

    // public function testInventory()
    // {
    //     $user = User::where('email' , 'admin@readerscorner.co')->first();
    //     $branchId = 1;
    //     $data = [
    //         'type' => 4,
    //         'branch_id' => $branchId,
    //     ];
    //     $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
    //     $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
    //     $response->assertStatus(200);
    //     $doc = Document::orderBy('created_at' , 'DESC')->first();
    //     $currents = [];
    //     foreach($products as $pr){
    //         $rec = [
    //             'isbn' => $pr->isbn,
    //             'qty' => 20,
    //             'doc' => $doc->id,
    //         ];


    //         $currentQty = getItemStock($pr->id , $branchId);
    //         $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
    //         $response->assertStatus(200);
    //         //get current stock
    //         array_push($currents , ["product_id" => $pr->id , 'qty' => $currentQty]);
    //         //create doc product
    //     }
    //     // dd($currents);
    //     $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
    //     $response->assertStatus(200);
    //     foreach($currents as $current){
    //         $stock = getItemStock($current['product_id'] , $branchId);
    //         // dd([$current['qty'] - 20 , intVal($stock)]);
    //         // dd($stock , $current['qty']);
    //         assertTrue(intVal($current['qty']) === intVal($stock) );
    //     }
    // }

    // public function testDefine()
    // {
    //     $user = User::where('email' , 'admin@readerscorner.co')->first();
    //     $branchId = 1;
    //     $data = [
    //         'type' => 5,
    //         'branch_id' => $branchId,
    //     ];
    //     $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
    //     $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
    //     $response->assertStatus(200);
    //     $doc = Document::orderBy('created_at' , 'DESC')->first();
    //     $currents = [];
    //     foreach($products as $pr){
    //         $rec = [
    //             'isbn' => $pr->isbn,
    //             'qty' => 0,
    //             'doc' => $doc->id,
    //         ];
    //         $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
    //         $response->assertStatus(200);
    //     }
    //     // dd($currents);
    //     $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
    //     $response->assertStatus(200);
    //     $response = $this->actingAs($user, 'api')->json('GET', 'api/admin/documents/items/?doc=53&page=1&show=10');
    //     $response->assertStatus(200);
    // }

    public function testFirstBallance()
    {
        $user = User::where('email' , 'admin@readerscorner.co')->first();
        $branchId = 1;
        $data = [
            'type' => 6,
            'branch_id' => $branchId,
        ];
        $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
        $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
        $response->assertStatus(200);
        $doc = Document::orderBy('created_at' , 'DESC')->first();
        $currents = [];
        foreach($products as $pr){
            $rec = [
                'isbn' => $pr->isbn,
                'qty' => 20,
                'doc' => $doc->id,
            ];


            $currentQty = getItemStock($pr->id , $branchId);
            // dd($pr->id , $branchId);
            $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
            $response->assertStatus(200);
            //get current stock
            array_push($currents , ["product_id" => $pr->id , 'qty' => $currentQty]);
            //create doc product
        }
        // dd($currents);
        $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
        $response->assertStatus(200);
        foreach($currents as $current){
            $stock = getItemStock($current['product_id'] , $branchId);
            dd([$current['qty'] , intVal($stock)]);
            assertTrue(intval($current['qty']) === intVal($stock) );
        }
    }

//     public function testTransaction()
//     {
//         $user = User::where('email' , 'admin@readerscorner.co')->first();
//         $branchId = 1;
//         $data = [
//             'type' => 7,
//             'branch_id' => $branchId,
//         ];
//         $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
//         $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/',$data);
//         $response->assertStatus(200);
//         $doc = Document::orderBy('created_at' , 'DESC')->first();
//         $currents = [];
//         foreach($products as $pr){
//             $rec = [
//                 'isbn' => $pr->isbn,
//                 'qty' => 20,
//                 'doc' => $doc->id,
//             ];


//             $currentQty = getItemStock($pr->id , $branchId);
//             $response = $this->actingAs($user, 'api')->json('POST', '/api/admin/documents/insert',$rec);
//             $response->assertStatus(200);
//             //get current stock
//             array_push($currents , ["product_id" => $pr->id , 'qty' => $currentQty]);
//             //create doc product
//         }
//         // dd($currents);
//         $response = $this->actingAs($user, 'api')->json('PUT', '/api/admin/documents/'.$doc->id.'/close');
//         $response->assertStatus(200);
//         foreach($currents as $current){
//             $stock = getItemStock($current['product_id'] , $branchId);
//             // dd([$current['qty'] - 20 , intVal($stock)]);
//             assertTrue(intval($current['qty']) - 20 === intVal($stock) );
//         }
//     }

  
}

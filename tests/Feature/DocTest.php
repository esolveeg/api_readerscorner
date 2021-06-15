<?php

namespace Tests\Feature;

use App\Document;
use App\Product;
use App\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

use function PHPUnit\Framework\assertEquals;
use function PHPUnit\Framework\assertTrue;

class DocTest extends TestCase
{
    protected $branchId = 4;
    
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function testBuy(){
        $this->testDoc(6);
    }
    // public function testSell(){
    //     $this->testDoc(2);
    // }
    private function testDoc($type)
    {
        $docResponse = $this->createDocReq([] , $type);
        $docResponse->assertStatus(200);
        $docId = $docResponse->decodeResponseJson()['id'];
        $products = Product::select(['id' , 'isbn' , 'price' , 'title'])->where('id' , '<' , '10')->get();
        $currents = [];
        foreach($products as $product){
           $stock = $this->saveItemStock($docId , $product->isbn);
           array_push($currents , $stock);
        }


       $closeDoc = $this->closeDocReq($docId);
        $closeDoc->assertStatus(200);
        foreach($currents as $current){
            $stock =  getItemStock($current['product'] , $this->branchId);
            $stock === $current['expected'] ? $this->assertEquals($current['expected'], $stock) : "";

        }
        return ;
        
    }
    private function user(){
        return User::where('email' , 'admin@readerscorner.co')->first();
    }
    private function closeDocReq($doc)
    {
         //close document
        return $this->actingAs($this->user(), 'api')->json('PUT', '/api/admin/documents/'.$doc.'/close');
    }
    private function createDocData($overrids=[] , $type)
    {
        return array_merge([
            'type' => $type,
            'branch_id' => $this->branchId,
        ], $overrids);
    }
    private function createDocReq($overrids=[] , $type)
    {
       return $this->actingAs($this->user(), 'api')->json('POST', '/api/admin/documents/',$this->createDocData($overrids , $type));
    }


    private function insertItemReq($data)
    {
        return  $this->actingAs($this->user(), 'api')->json('POST', '/api/admin/documents/insert',$data);
    }

    private function saveItemStock($doc , $isbn)
    {
        $type = Document::find($doc)->type;
        $id = Product::where('isbn' , $isbn)->first()->id;
        $data = $this->insertItemData([] , $doc , $isbn);
        $currentQty = getItemStock($id , $this->branchId);
        $reqQty = $data['qty'];
        $expectedQty = null;
        $response = $this->insertItemReq($data);
        $response->assertStatus(200);
        //check if doc type is sell or buy return to perform minus
        if($type <= 1){
            $expectedQty=$currentQty - $reqQty;
        } 
        //check if doc type is buy or sell return to perform plus
        if($type >= 2 && $type <= 3){
            $expectedQty=$currentQty + $reqQty;
        }

        //check if doc type is inventory or define or first balance 
        if($type >= 4 && $type <= 6){
            $expectedQty= $reqQty;
        }

        
        //check if doc type is transaction
        if($type == 7){
            
        }
        return [
            'current' => $currentQty,
            'expected' => $expectedQty,
            'qty' => $data['qty'],
            'product' => $id,
        ];
    }


    private function insertItemData($overrids=[] , $doc , $isbn)
    {
        return array_merge([
            'isbn' => $isbn,
            'qty' => rand(1,20),
            'doc' => $doc,
        ], $overrids);
    }
}

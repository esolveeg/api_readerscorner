<?php

namespace App\data;

use App\Age;
use App\Category;
use App\Language;
use Closure;

class Germany
{
    //
    public function all()
    {
        return [
				['isbn' => '9783480231584', 'price' => '260'],
				['isbn' => '9783897366619', 'price' => '200'],
				['isbn' => '9781838528072', 'price' => '200'],
				['isbn' => '9783845817286', 'price' => '120'],
				['isbn' => '9781838529550', 'price' => '200'],
				['isbn' => '9783849459932', 'price' => '200'],
				['isbn' => '9783845816098', 'price' => '200'],
				['isbn' => '9781838524630', 'price' => '100'],
				['isbn' => '9783849459918', 'price' => '200'],
				['isbn' => '9783845825465', 'price' => '100'],
				['isbn' => '9781782325918', 'price' => '300'],
				['isbn' => '9781838524678', 'price' => '200'],
			];
	
	}
	
	public function filters(){
		$language = Language::where('slug' , 'gr')->first()->id;
		return [
			'age' => null,
			'categories' => null,
			'language' => $language,
		];
	}

}

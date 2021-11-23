<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\SubCategory;
use App\Models\SubSubCategory;
use App\Models\Brand;

use App\Models\Product;
use App\Models\MultiImg;
use Carbon\Carbon;
use Image;

class ProductController extends Controller
{
    public function AddProduct(){
        $categories = Category::latest()->get();
        $brands = Brand::latest()->get();
        return view('backend.product.product_add',compact('categories','brands'));

    }

    public function StoreProduct(Request $request){
        $image = $request->file('product_thumbnail');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->resize(917,1000)->save('upload/products/thumbnail/'.$name_gen);
    	$save_url = 'upload/products/thumbnail/'.$name_gen;

        $product_id = Product::insertGetId([           
            'brand_id' => $request->brand_id, 
           'category_id' => $request->category_id,
           'subcategory_id' => $request->subcategory_id,
           'subsubcategory_id' => $request->subsubcategory_id,
           'product_name_en' => $request->product_name_en,
           'product_name_hin' => $request->product_name_hin,
           'product_slug_en' => strtolower(str_replace(' ','-' ,$request->product_slug_en)),
           'product_slug_hin' => strtolower(str_replace(' ','-' ,$request->product_slug_hin)),
           'product_code' => $request->product_code,
           'product_qty' => $request->product_qty,
           'product_tags_en' => $request->product_tags_en,
           'product_tags_hin' => $request->product_tags_hin,
           'product_size_en' => $request->product_size_en,
           'product_size_hin' => $request->product_size_hin,
           'product_color_en' => $request->product_color_en,
           'product_color_hin' => $request->product_color_hin,
           'selling_price' => $request->selling_price,
           'discount_price' => $request->discount_price,
           'short_desc_en' => $request->short_desc_en,
           'short_desc_hin' => $request->short_desc_hin,
           'long_desc_en' => $request->long_desc_en,
           'long_desc_hin' => $request->long_desc_hin,
           'hot_deals' => $request->hot_deals,
           'featured' => $request->featured,
           'special_offer' => $request->special_offer,
           'special_deals' => $request->special_deals,

           'product_thumbnail' => $save_url,
           'status' => 1,
           'created_at' => Carbon::now(),   
 

        ]);

         ////////// Multiple Image Upload Start ///////////

      $images = $request->file('multi_img');
      foreach ($images as $img) {
      	$make_name = hexdec(uniqid()).'.'.$img->getClientOriginalExtension();
    	Image::make($img)->resize(917,1000)->save('upload/products/multi-image/'.$make_name);
    	$uploadPath = 'upload/products/multi-image/'.$make_name;

    	MultiImg::insert([

    		'product_id' => $product_id,
    		'photo_name' => $uploadPath,
    		'created_at' => Carbon::now(), 

    	]);

      }

      ////////// End Multiple Image Upload Start ///////////


       $notification = array(
			'message' => 'Product Inserted Successfully',
			'alert-type' => 'success'
		);
 
		return redirect()->route('manage-product')->with($notification);
    }

    public function ManageProduct(){

		$products = Product::latest()->get();
		return view('backend.product.product_view',compact('products'));
	}

    public function EditProduct($id){
        $categories = Category::latest()->get();
        $brands = Brand::latest()->get();
        $subcategory = SubCategory::latest()->get();
        $subsubcategory = SubSubCategory::latest()->get();
        $products = Product::findOrFail($id);
        return view('backend.product.product_edit',compact('categories','brands','subcategory','subsubcategory','products'));
    }

    public function ProductDataUpdate(Request $request){
        $product_id = $request->id;

        Product::findOrFail($product_id)->update([           
            'brand_id' => $request->brand_id, 
           'category_id' => $request->category_id,
           'subcategory_id' => $request->subcategory_id,
           'subsubcategory_id' => $request->subsubcategory_id,
           'product_name_en' => $request->product_name_en,
           'product_name_hin' => $request->product_name_hin,
           'product_slug_en' => strtolower(str_replace(' ','-' ,$request->product_slug_en)),
           'product_slug_hin' => strtolower(str_replace(' ','-' ,$request->product_slug_hin)),
           'product_code' => $request->product_code,
           'product_qty' => $request->product_qty,
           'product_tags_en' => $request->product_tags_en,
           'product_tags_hin' => $request->product_tags_hin,
           'product_size_en' => $request->product_size_en,
           'product_size_hin' => $request->product_size_hin,
           'product_color_en' => $request->product_color_en,
           'product_color_hin' => $request->product_color_hin,
           'selling_price' => $request->selling_price,
           'discount_price' => $request->discount_price,
           'short_desc_en' => $request->short_desc_en,
           'short_desc_hin' => $request->short_desc_hin,
           'long_desc_en' => $request->long_desc_en,
           'long_desc_hin' => $request->long_desc_hin,
           'hot_deals' => $request->hot_deals,
           'featured' => $request->featured,
           'special_offer' => $request->special_offer,
           'special_deals' => $request->special_deals,

            'status' => 1,
           'updated_at' => Carbon::now(),   
 

        ]);

        $notification = array(
			'message' => 'Product Updated Without Image Successfully',
			'alert-type' => 'success'
		);
 
		return redirect()->route('manage-product')->with($notification);



    }
    
}

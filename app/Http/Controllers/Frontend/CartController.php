<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
use App\Models\Wishlist;
use Carbon\Carbon;

class CartController extends Controller
{
    public function AddToCart(Request $request, $id){
        
        $product = Product::findOrFail($id);
        if ($product->discount_price == NULL) {
            Cart::add([
                'id' => $id, 
                'name' => $request->product_name, 
                'qty' => $request->quantity, 
                'price' => $product->selling_price, 
                'weight' => 1, 
                'options' => [
                    'image' => $product->product_thumbnail,
                    'color' => $request->color,
                    'size' => $request->size,
                ],
                ]);
                return response()->json(['success' => 'Successfully Added to Your Cart']);
        }else{
            Cart::add([
                'id' => $id, 
                'name' => $request->product_name, 
                'qty' => $request->quantity, 
                'price' => $product->discount_price, 
                'weight' => 1, 
                'options' => [
                    'image' => $product->product_thumbnail,
                    'color' => $request->color,
                    'size' => $request->size,
                ],
                ]);
                return response()->json(['success' => 'Successfully Added to Your Cart']);

        }

    }

    public function AddMiniCart(){
       // Cart::destroy();
        $carts = Cart::content();
        $cartQty = Cart::count();
        $cartTotal = Cart::total();
       
        return response()->json(array(
            'carts' => $carts,
            'cartQty' => $cartQty,
            'cartTotal' => round($cartTotal),
        
        
        ));
    }

    public function RemoveMiniCart($rowId){
        Cart::remove($rowId);
        return response()->json(['success' => 'Product Successfully Removed from Cart']);
    }

    public function AddToWishlist(Request $request, $product_id){
        if (Auth::check()) {
            $exists = Wishlist::where('user_id',Auth::id())->where('product_id',$product_id)->first();
            if (!$exists) {
                Wishlist::insert([
                    'user_id' => Auth::id(),
                    'product_id' => $product_id,
                    'created_at' => Carbon::now(),
    
                ]);
            
                return response()->json(['success' => 'Item Successfully Added to Your Wishlist']);
    
               
            } else {
                return response()->json(['error' => 'Item is Already On Your Wishlist']);
               
            }
            
 
        } else {
            return response()->json(['error' => 'Please Login to Your Account First']);
        }
        

    }

    public function CouponApply(Request $request){
        

    }
}

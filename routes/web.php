<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\AdminProfileController;
use App\Http\Controllers\Backend\BrandController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\SubCategoryController;
use App\Http\Controllers\Backend\ProductController;
use App\Http\Controllers\Backend\SliderController;
use App\Http\Controllers\Frontend\IndexController;
use App\Http\Controllers\Frontend\LanguageController;
use App\Http\Controllers\Frontend\CartController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\User\WishlistController;
use App\Http\Controllers\User\CartPageController;
use App\Http\Controllers\Backend\CouponController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::group(['prefix'=> 'admin', 'middleware'=>['admin:admin']], function(){
    Route::get('/login', [AdminController::class, 'loginForm']); 
    Route::post('/login', [AdminController::class, 'store'])->name('admin.login'); 
});


    
Route::middleware(['auth:sanctum,admin', 'verified'])->get('/admin/dashboard', function () {
    return view('admin.index');
})->name('dashboard')->middleware('auth:admin');


// Admin All Routes

Route::get('/admin/logout', [AdminController::class, 'destroy'])->name('admin.logout')->middleware('auth:admin'); 

Route::get('/admin/profile/edit', [AdminProfileController::class, 'AdminProfileEdit'])->name('admin.profile.edit')->middleware('auth:admin'); 

Route::get('/admin/profile', [AdminProfileController::class, 'AdminProfile'])->name('admin.profile')->middleware('auth:admin'); 

Route::post('/admin/profile/store', [AdminProfileController::class, 'AdminProfileStore'])->name('admin.profile.store')->middleware('auth:admin'); 

Route::get('/admin/change/password', [AdminProfileController::class, 'AdminChangePassword'])->name('admin.change.password')->middleware('auth:admin'); 

Route::post('/update/change/password', [AdminProfileController::class, 'AdminUpdateChangePassword'])->name('update.change.password')->middleware('auth:admin'); 





// Admin Brand All Routes

Route::prefix('brand')->group(function(){
    Route::get('/view', [BrandController::class, 'BrandView'])->name('all.brand')->middleware('auth:admin'); 
    Route::post('/store', [BrandController::class, 'BrandStore'])->name('brand.store')->middleware('auth:admin'); 
    Route::get('/edit/{id}', [BrandController::class, 'BrandEdit'])->name('brand.edit')->middleware('auth:admin'); 
    Route::post('/update', [BrandController::class, 'BrandUpdate'])->name('brand.update')->middleware('auth:admin');
    Route::get('/delete/{id}', [BrandController::class, 'BrandDelete'])->name('brand.delete')->middleware('auth:admin'); 
});

// Admin Category All Routes

Route::prefix('category')->group(function(){
    Route::get('/view', [CategoryController::class, 'CategoryView'])->name('all.category')->middleware('auth:admin'); 
    Route::post('/store', [CategoryController::class, 'CategoryStore'])->name('category.store')->middleware('auth:admin'); 
    Route::get('/edit/{id}', [CategoryController::class, 'CategoryEdit'])->name('category.edit')->middleware('auth:admin'); 
    Route::post('/update/{id}', [CategoryController::class, 'CategoryUpdate'])->name('category.update')->middleware('auth:admin');
    Route::get('/delete/{id}', [CategoryController::class, 'CategoryDelete'])->name('category.delete')->middleware('auth:admin'); 

// Admin Sub Category All Routes

Route::get('/sub/view', [SubCategoryController::class, 'SubCategoryView'])->name('all.subcategory')->middleware('auth:admin'); 
Route::post('/sub/store', [SubCategoryController::class, 'SubCategoryStore'])->name('subcategory.store')->middleware('auth:admin'); 
Route::get('/sub/edit/{id}', [SubCategoryController::class, 'SubCategoryEdit'])->name('subcategory.edit')->middleware('auth:admin'); 
Route::post('/sub/update', [SubCategoryController::class, 'SubCategoryUpdate'])->name('subcategory.update')->middleware('auth:admin');
Route::get('/sub/delete/{id}', [SubCategoryController::class, 'SubCategoryDelete'])->name('subcategory.delete')->middleware('auth:admin'); 

// Admin Sub->Sub Category All Routes

Route::get('/sub/sub/view', [SubCategoryController::class, 'SubSubCategoryView'])->name('all.subsubcategory')->middleware('auth:admin'); 

Route::get('/subcategory/ajax/{category_id}', [SubCategoryController::class, 'GetSubCategory'])->middleware('auth:admin');

Route::get('/sub-subcategory/ajax/{subcategory_id}', [SubCategoryController::class, 'GetSubSubCategory'])->middleware('auth:admin');


Route::post('/sub/sub/store', [SubCategoryController::class, 'SubSubCategoryStore'])->name('subsubcategory.store')->middleware('auth:admin'); 
Route::get('/sub/sub/edit/{id}', [SubCategoryController::class, 'SubSubCategoryEdit'])->name('subsubcategory.edit')->middleware('auth:admin'); 
Route::post('/sub/sub/update', [SubCategoryController::class, 'SubSubCategoryUpdate'])->name('subsubcategory.update')->middleware('auth:admin');
Route::get('/sub/sub/delete/{id}', [SubCategoryController::class, 'SubSubCategoryDelete'])->name('subsubcategory.delete')->middleware('auth:admin'); 

});

// Admin Products All Routes

Route::prefix('product')->group(function(){
    Route::get('/add', [ProductController::class, 'AddProduct'])->name('add-product')->middleware('auth:admin'); 
    Route::post('/store', [ProductController::class, 'StoreProduct'])->name('product-store')->middleware('auth:admin'); 
    Route::get('/manage', [ProductController::class, 'ManageProduct'])->name('manage-product')->middleware('auth:admin');
    Route::get('/edit/{id}', [ProductController::class, 'EditProduct'])->name('product.edit')->middleware('auth:admin');
    Route::post('/data/update', [ProductController::class, 'ProductDataUpdate'])->name('product-update')->middleware('auth:admin'); 
    Route::post('/image/update', [ProductController::class, 'MutiImageUpdate'])->name('update-product-image')->middleware('auth:admin'); 
    Route::post('/thumbnail/update', [ProductController::class, 'ThumbnailImageUpdate'])->name('update-product-thumbnail')->middleware('auth:admin'); 
    Route::post('/thumbnail/update', [ProductController::class, 'ThumbnailImageUpdate'])->name('update-product-thumbnail')->middleware('auth:admin'); 
    Route::get('/multiimg/delete/{id}', [ProductController::class, 'MutiImageDelete'])->name('product.multiimg.delete')->middleware('auth:admin');
    Route::post('/multiimg/insert', [ProductController::class, 'MultiImageInsert'])->name('insert-product-images')->middleware('auth:admin'); 
    Route::get('/details/{id}', [ProductController::class, 'ViewProduct'])->name('product.details')->middleware('auth:admin');

    Route::get('/inactive/{id}', [ProductController::class, 'ProductInactive'])->name('product.inactive')->middleware('auth:admin');
    Route::get('/active/{id}', [ProductController::class, 'ProductActive'])->name('product.active')->middleware('auth:admin');
    Route::get('/delete/{id}', [ProductController::class, 'ProductDelete'])->name('product.delete')->middleware('auth:admin');

   
});


// Admin Slider All Routes

Route::prefix('slider')->group(function(){
    Route::get('/view', [SliderController::class, 'SliderView'])->name('manage-slider')->middleware('auth:admin'); 
    Route::post('/store', [SliderController::class, 'SliderStore'])->name('slider.store')->middleware('auth:admin'); 
    Route::get('/edit/{id}', [SliderController::class, 'SliderEdit'])->name('slider.edit')->middleware('auth:admin'); 
    Route::post('/update', [SliderController::class, 'SliderUpdate'])->name('slider.update')->middleware('auth:admin');
    Route::get('/delete/{id}', [SliderController::class, 'SliderDelete'])->name('slider.delete')->middleware('auth:admin'); 
    Route::get('/inactive/{id}', [SliderController::class, 'SliderInactive'])->name('slider.inactive')->middleware('auth:admin');
    Route::get('/active/{id}', [SliderController::class, 'SliderActive'])->name('slider.active')->middleware('auth:admin');

});


// User All Routes

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    $id = Auth::user()->id;
    $user = User::find($id);
    return view('dashboard',compact('user'));
})->name('dashboard');

Route::get('/', [IndexController::class, 'index']); 

Route::get('/user/logout', [IndexController::class, 'UserLogout'])->name('user.logout'); 

Route::get('/user/profile', [IndexController::class, 'UserProfile'])->name('user.profile'); 

Route::post('/user/profile/store', [IndexController::class, 'UserProfileStore'])->name('user.profile.store'); 

Route::get('/user/change/password', [IndexController::class, 'UserChangePassword'])->name('change.password'); 

Route::post('/user/password/update', [IndexController::class, 'UserPasswordUpdate'])->name('user.password.update'); 




///// Frontend All Routes //////

////  Multi Language All Routes ////

Route::get('/language/hindi', [LanguageController::class, 'Hindi'])->name('hindi.language'); 
Route::get('/language/english', [LanguageController::class, 'English'])->name('english.language'); 

//// Frontend Product Details ////
Route::get('/product/details/{id}/{slug}', [IndexController::class, 'ProductDetails']); 


//// Frontend Product Tags Page ////
Route::get('/product/tag/{id}', [IndexController::class, 'TagWiseProduct']); 


//Frontend SubCategory Wise Data
Route::get('/subcategory/product/{subcat_id}/{slug}', [IndexController::class, 'SubCatWiseProduct']); 


//Frontend SubSubCategory Wise Data
Route::get('/subsubcategory/product/{subsubcat_id}/{slug}', [IndexController::class, 'SubSubCatWiseProduct']); 


//Product View Modal with Ajax
Route::get('/product/view/modal/{id}', [IndexController::class, 'ProductViewAjax']); 


// Add To Cart Store Data
Route::post('/cart/data/store/{id}', [CartController::class, 'AddToCart']); 

// Add To Cart Store Data
Route::get('/product/mini/cart/', [CartController::class, 'AddMiniCart']); 

// Remove Mini Cart
Route::get('/minicart/product-remove/{rowId}', [CartController::class, 'RemoveMiniCart']); 

// Add To Wishlist
Route::post('/add-to-wishlist/{product_id}', [CartController::class, 'AddToWishlist']); 

Route::group(['prefix'=>'user','middleware'=>['user','auth'],'namespace'=>'User'],
function(){
// Wishlist Page
Route::get('/wishlist', [WishlistController::class, 'ViewWishlist'])->name('wishlist'); 

Route::get('/get-wishlist-product', [WishlistController::class, 'GetWishlistProduct']); 


Route::get('/wishlist-remove/{id}', [WishlistController::class, 'RemoveWishlistProduct']); 


});

//// My Cart Page All Routes
Route::get('/mycart', [CartPageController::class, 'MyCart'])->name('mycart'); 

Route::get('/user/get-cart-product', [CartPageController::class, 'GetCartProduct']); 

Route::get('/user/cart-remove/{rowId}', [CartPageController::class, 'RemoveCartProduct']); 

Route::get('/cart-increment/{rowId}', [CartPageController::class, 'CartIncrement']); 

Route::get('/cart-decrement/{rowId}', [CartPageController::class, 'CartDecrement']); 


// Admin Coupon All Routes

Route::prefix('coupons')->group(function(){
    Route::get('/view', [CouponController::class, 'CouponView'])->name('manage-coupon')->middleware('auth:admin'); 
 
    Route::post('/store', [CouponController::class, 'CouponStore'])->name('coupon.store')->middleware('auth:admin'); 

});
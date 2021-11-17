<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SubCategory;

class SubCategoryController extends Controller
{
    public function SubCategoryView(){
        $subcategory = SubCategory::latest()->get();
        return view('backend.category.subcategory_view',compact('subcategory'));
    }

    public function SubCategoryStore(Request $request) {
        $request->validate([
            'subcategory_name_en' => 'required',
            'subcategory_name_hin' => 'required',
        ],[
            'subcategory_name_en.required' => 'Input SubCategory English Name',
            'subcategory_name_hin.required' => 'Input SubCategory Hindi Name',

        ]);

        SubCategory::insert([
            'subcategory_name_en'  => $request->subcategory_name_en,
            'subcategory_name_hin'  => $request->subcategory_name_hin,
            'subcategory_slug_en'  => strtolower(str_replace(' ','-' ,$request->subcategory_name_en)),
            'subcategory_slug_hin'  => str_replace(' ','-' ,$request->subcategory_name_hin),

        ]);
        $notification = array(
            'message' => 'SubCategory Inserted Successfully',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }

    public function SubCategoryEdit($id) {
        $subcategory = SubCategory::findOrFail($id);
        return view('backend.category.subcategory_edit',compact('subcategory'));
    }

    public function SubCategoryUpdate(Request $request) {
        $subcategory_id = $request->id;
 

             SubCategory::findOrFail($subcategory_id)->update([
                'subcategory_name_en'  => $request->subcategory_name_en,
                'subcategory_name_hin'  => $request->subcategory_name_hin,
                'subcategory_slug_en'  => strtolower(str_replace(' ','-' ,$request->subcategory_name_en)),
                'subcategory_slug_hin'  => str_replace(' ','-' ,$request->subcategory_name_hin),
    
            ]);
            $notification = array(
                'message' => 'SubCategory Updated Successfully',
                'alert-type' => 'info'
            );
            return redirect()->route('all.subcategory')->with($notification);
    }

    public function SubCategoryDelete($id){
        $subcategory = SubCategory::findOrFail($id);
        SubCategory::findOrFail($id)->delete();
        $notification = array(
            'message' => 'SubCategory Deleted Successfully',
            'alert-type' => 'info',
        );
        return redirect()->back()->with($notification);
    }
}

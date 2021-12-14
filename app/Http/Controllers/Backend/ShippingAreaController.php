<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ShipDivision;
use App\Models\ShipDistrict;
use Carbon\Carbon;
class ShippingAreaController extends Controller
{
    public function DivisionView(){
        $divisions = ShipDivision::orderBy('id','DESC')->get();
        return view('backend.division.view_divisions',compact('divisions'));

    }

    public function DivisionStore(Request $request){
        $request->validate([
            'division_name' => 'required',
         ],[
            'division_name.required' => 'Input Division Name',

        ]);

        ShipDivision::insert([
            'division_name'  => $request->division_name,
             'created_at' => Carbon::now(), 
        ]);
        $notification = array(
            'message' => 'Division Inserted Successfully',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }

    public function DivisionEdit($id){
        $division = ShipDivision::findOrFail($id);
        return view('backend.division.edit_division',compact('division'));
    }

    public function DivisionUpdate(Request $request,$id){
        ShipDivision::findOrFail($id)->update([
            'division_name'  => $request->division_name,
            'updated_at' => Carbon::now(), 
        ]);
        $notification = array(
            'message' => 'Division Updated Successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('manage-division')->with($notification);
    }

    public function DivisionDelete($id){
        
        ShipDivision::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Division Deleted Successfully',
            'alert-type' => 'info',
        );
        return redirect()->back()->with($notification);
    }

    // Start ShipDistrict

    public function DistrictView(){
        $division = ShipDivision::orderBy('division_name','ASC')->get();
        $district = ShipDistrict::orderBy('id','DESC')->get();
        return view('backend.district.view_district',compact('division','district'));

    }

       // End ShipDistrict
    
}

<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ShipDivision;
use App\Models\ShipDistrict;
use App\Models\ShipState;
use Carbon\Carbon;

class ShippingAreaController extends Controller
{
    public function DivisionView()
    {
        $divisions = ShipDivision::orderBy('id', 'DESC')->get();
        return view('backend.division.view_divisions', compact('divisions'));
    }

    public function DivisionStore(Request $request)
    {
        $request->validate([
            'division_name' => 'required',
        ], [
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

    public function DivisionEdit($id)
    {
        $division = ShipDivision::findOrFail($id);
        return view('backend.division.edit_division', compact('division'));
    }

    public function DivisionUpdate(Request $request, $id)
    {
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

    public function DivisionDelete($id)
    {

        ShipDivision::findOrFail($id)->delete();
        $notification = array(
            'message' => 'Division Deleted Successfully',
            'alert-type' => 'info',
        );
        return redirect()->back()->with($notification);
    }

    // Start ShipDistrict

    public function DistrictView()
    {
        $division = ShipDivision::orderBy('division_name', 'ASC')->get();
        $district = ShipDistrict::with('division')->orderBy('id', 'DESC')->get();
        return view('backend.district.view_district', compact('division', 'district'));
    }

    public function DistrictStore(Request $request)
    {
        $request->validate([
            'division_id' => 'required',
            'district_name' => 'required',
        ], [
            'division_id.required' => 'Division Required',
            'district_name.required' => 'District Required',

        ]);

        ShipDistrict::insert([
            'division_id'  => $request->division_id,
            'district_name'  => $request->district_name,
            'created_at' => Carbon::now(),
        ]);
        $notification = array(
            'message' => 'District Inserted Successfully',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }

    public function DistrictEdit($id)
    {
        $division = ShipDivision::orderBy('division_name', 'ASC')->get();
        $district = ShipDistrict::findOrFail($id);
        return view('backend.district.edit_district', compact('district', 'division'));
    }

    public function DistrictUpdate(Request $request, $id)
    {
        ShipDistrict::findOrFail($id)->update([
            'division_id'  => $request->division_id,
            'district_name'  => $request->district_name,
            'updated_at' => Carbon::now(),
        ]);
        $notification = array(
            'message' => 'District Updated Successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('manage-district')->with($notification);
    }

    public function DistrictDelete($id)
    {

        ShipDistrict::findOrFail($id)->delete();
        $notification = array(
            'message' => 'District Deleted Successfully',
            'alert-type' => 'info',
        );
        return redirect()->back()->with($notification);
    }
    // End ShipDistrict

    // Start ShipState

    public function StateView()
    {
        $division = ShipDivision::orderBy('division_name', 'ASC')->get();
        $district = ShipDistrict::orderBy('district_name', 'ASC')->get();
        $state = ShipState::orderBy('id', 'DESC')->get();
        //    $state = ShipState::with('division')->orderBy('id','DESC')->get();
        return view('backend.state.view_state', compact('division', 'district', 'state'));
    }

    public function GetDistrict($division_id)
    {

        $district = ShipDistrict::where('division_id', $division_id)->orderBy('district_name', 'ASC')->get();
        return json_encode($district);
    }


    // End ShipState

}

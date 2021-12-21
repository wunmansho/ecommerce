$state = ShipState::where('district_id',$district_id)->orderBy('state_name','ASC')->get();
return json_encode($state);

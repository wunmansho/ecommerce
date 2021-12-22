@extends('frontend.main_master')
@section('content')
<!-- @php
    $user = DB::table('users')->where('id',Auth::user()->id)->first();
@endphp -->
<div class="body-content">
    <div class="container">
        <div class="row">
            @include('frontend.common.user_sidebar')
            <div class="col-md-2">
            </div>
            <div class="col-md-6">
                <div class="card">
                    <h3 class="text-center"><span class="text-danger">Change Password</span><strong></strong></h3>
                        <div class="card-body">
                            <form method="POST" action="{{ route('user.password.update') }}">
                                @csrf
                                <div class="form-group">
                                    <label class="info-title" for="current_password">Current Password<span></span></label>
                                    <input type="password" class="form-control" id="current_password"
                                        name="current_password" >
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="password">New Password<span></span></label>
                                    <input type="password" class="form-control" id="password"
                                        name="password" >
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="password_confirmation">Confirm Password<span></span></label>
                                    <input type="password" class="form-control" id="password_confirmation"
                                        name="password_confirmation" >
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-danger">Update Profile</button>
                                </div>

                            </form>
    
                        </div>
                </div>
            </div>

 
        </div>
    </div>
</div>

@endsection

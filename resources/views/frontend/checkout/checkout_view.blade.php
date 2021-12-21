@extends('frontend.main_master')
@section('content')
@section('title')
    My Checkout
@endsection

<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="home.html">Home</a></li>
                <li class='active'>Checkout</li>
            </ul>
        </div><!-- /.breadcrumb-inner -->
    </div><!-- /.container -->
</div><!-- /.breadcrumb -->


<div class="body-content">
    <div class="container">
        <div class="checkout-box ">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel-group checkout-steps" id="accordion">
                        <!-- checkout-step-01  -->
                        <div class="panel panel-default checkout-step-01">

                            <!-- panel-heading -->

                            <!-- panel-heading -->

                            <div id="collapseOne" class="panel-collapse collapse in">

                                <!-- panel-body  -->
                                <div class="panel-body">
                                    <div class="row">

                                        <!-- guest-login -->
<div class="col-md-6 col-sm-6 already-registered-login">
    <h4 class="checkout-subtitle"><b>Shipping Address</b></h4>
    <form class="register-form" role="form">
        <div class="form-group">
            <label class="info-title" for="shipping_name">Shipping Name
                <span>*</span></label>
            <input type="text" name="shipping_name"
                class="form-control unicase-form-control text-input"
                id="shipping_name" placeholder="Full Name" value="{{ Auth::user()->name }}" required="">
        </div>

        <div class="form-group">
            <label class="info-title" for="shipping_email">Email
                <span>*</span></label>
            <input type="email" name="shipping_email"
                class="form-control unicase-form-control text-input"
                id="shipping_email" placeholder="Email" value="{{ Auth::user()->email }}" required="">
        </div>

        <div class="form-group">
            <label class="info-title" for="shipping_phone">Phone
                <span>*</span></label>
            <input type="number" name="shipping_phone"
                class="form-control unicase-form-control text-input"
                id="shipping_phone" placeholder="Phone" value="{{ Auth::user()->phone }}" required="">
        </div>

        <div class="form-group">
            <label class="info-title" for="post_code">Zip
                <span>*</span></label>
            <input type="text" name="post_code"
                class="form-control unicase-form-control text-input"
                id="post_code" placeholder="Zip" required="">
        </div>



        

     </form>
</div>

<!-- guest-login -->

<!-- already-registered-login -->
<div class="col-md-6 col-sm-6 already-registered-login">
    <h4 class="checkout-subtitle">Already registered?</h4>
    <p class="text title-tag-line">Please log in below:</p>
    <form class="register-form" role="form">
        <div class="form-group">
            <label class="info-title" for="exampleInputEmail1">Email Address
                <span>*</span></label>
            <input type="email"
                class="form-control unicase-form-control text-input"
                id="exampleInputEmail1" placeholder="">
        </div>
        <div class="form-group">
            <label class="info-title" for="exampleInputPassword1">Password
                <span>*</span></label>
            <input type="password"
                class="form-control unicase-form-control text-input"
                id="exampleInputPassword1" placeholder="">
            <a href="#" class="forgot-password">Forgot your Password?</a>
        </div>
        <button type="submit"
            class="btn-upper btn btn-primary checkout-page-button">Login</button>
    </form>
</div>
<!-- already-registered-login -->

                                    </div>
                                </div>
                                <!-- panel-body  -->

                            </div><!-- row -->
                        </div>
                        <!-- checkout-step-01  -->


                    </div><!-- /.checkout-steps -->
                </div>
                <div class="col-md-4">
                    <!-- checkout-progress-sidebar -->
                    <div class="checkout-progress-sidebar ">
                        <div class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="unicase-checkout-title">Your Checkout Progress</h4>
                                </div>
                                <div class="">
                                    <ul class="nav nav-checkout-progress list-unstyled">
                                        @foreach ($carts as $item)
                                        <li>
                                            <strong>Image: </strong>
                                            <img src="{{ asset($item->options->image) }}" style="height: 50px; width 50px;">
                                        </li>
                                        <li>
                                            <strong>Qty: </strong>
                                           ( {{ $item->qty }} )
                                            @if($item->options->color != null)
                                            <strong>Color: </strong>
                                            {{ $item->options->color }}
                                            @endif
                                            @if($item->options->size != null)
                                            <strong>Size: </strong>
                                            {{ $item->options->size }}
                                            @endif

                                        </li>
  
 
                                        @endforeach
                                        <li>
                                            @if(Session::has('coupon'))
                                            <strong>Subtotal: </strong> ${{ $cartTotal }} <hr>
                                            <strong>Coupon Name: </strong> {{ Session()->get('coupon')['coupon_name'] }} 
                                            ( {{ session()->get('coupon')['coupon_discount'] }} % )  
                                            <hr>
                                            <strong>Coupon Discount: </strong> ${{ Session()->get('coupon')['discount_amount'] }} <hr>
                                           
                                            <strong>Grand Total: </strong> ${{ Session()->get('coupon')['total_amount'] }} <hr>


                                            @else
                                            <strong>Subtotal: </strong> ${{ $cartTotal }} <hr>
                                            <strong>Grand Total: </strong> ${{ $cartTotal }} <hr>
                                            @endif
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- checkout-progress-sidebar -->
                </div>
            </div><!-- /.row -->
        </div><!-- /.checkout-box -->
        <!-- ============================================== BRANDS CAROUSEL ============================================== -->

        <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
    </div><!-- /.container -->
</div><!-- /.body-content -->



@endsection
<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Gloudemans\Shoppingcart\Facades\Cart;
use App\Models\Order;
use App\Models\OrderItem;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderMail;

class AllUserController extends Controller
{
    public function MyOrders(){
        $orders = Order::where('user_id', Auth::id())->orderBy('id', 'DESC')->get();
        return view('frontend.user.order.order_view',compact('orders'));
    }

    public function OrderDetails($order_id){
        //  The with clause below references the relationship 
        //  methods that we have created in Order Model
        $order = Order::with('division','district','state','user')->where('id', $order_id)->where('user_id', Auth::id())->first();
        $orderItem = OrderItem::with('product')->where('order_id', $order_id)->orderBy('id','DESC')->get();
        return view('frontend.user.order.order_details',compact('order','orderItem'));

    }

    public function InvoiceDownload($order_id){
        //  The with clause below references the relationship 
        //  methods that we have created in Order Model
        $order = Order::with('division','district','state','user')->where('id', $order_id)->where('user_id', Auth::id())->first();
        $orderItem = OrderItem::with('product')->where('order_id', $order_id)->orderBy('id','DESC')->get();
        return view('frontend.user.order.order_invoice',compact('order','orderItem'));


    }
}

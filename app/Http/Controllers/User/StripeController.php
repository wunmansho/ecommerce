<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class StripeController extends Controller
{
    public function StripeOrder(Request $request){
 
\Stripe\Stripe::setApiKey('sk_test_51K9DNNHKzSPTGjObvzmJf6AYNUVMoJm4MAlOhfkiqvHSuqJd4426em8Z1gGWih4m8y9hy2tvcsIMy1eZm7cM7NQ100vwhHEx7z');

$token = $_POST['stripeToken'];

$charge = \Stripe\Charge::create([
  'amount' => 999,
  'currency' => 'usd',
  'description' => 'My Online Store',
  'source' => $token,
  'metadata' => ['order_id' => '6735'],
]);
        dd($charge);
    }
}

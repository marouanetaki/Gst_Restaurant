<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use App\Mail\ConfirmationMail;
use Illuminate\Http\Request;
use App\Plat;
Use Session;
use Auth;
use App\Order;
use App\Cart;

class ProductController extends Controller
{
    public function getAddToCart(Request $req, $id)
    {
        $product = Plat::find($id);
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->add($product, $product->id);

        $req->session()->put('cart', $cart);
        return redirect()->back();
    }

    public function getCart()
    {
        if(!Session::has('cart')){
            return view('partials.shoppingcart', ['products' => null]);
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        return view('partials.shoppingcart', ['products' => $cart->items, 'totalPrice' => $cart->totalPrice]);
    }

    public function orderStore(Request $req)
    {
        if(!Session::has('cart')){
            return view('partials.shoppingcart', ['products' => null]);
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $order = new Order();
        $order->cart = serialize($cart);
        $order->adress = $req->adress;
        $order->name = $req->name;
        $order->phone = $req->phone;
        $order->email = $req->email;
        Auth::user()->orders()->save($order);
        Mail::to(Auth::user()->email)->send(new ConfirmationMail());
        Session::forget('cart');
        return view('partials.confirmed');
    }

    public function getUserOrders()
    {
        $orders = Auth::user()->orders;
        $orders->transform(function($order, $key){
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('partials.myorders',['orders' => $orders]);
    }

    public function removeItem($id)
    {
        $oldCart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        Session::put('cart', $cart);
        return redirect()->route('product.shoppingCart');
    }
}

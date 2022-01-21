@extends("master") 

@section("content")
<section class="bg-title-page flex-c-m p-t-160 p-b-80 p-l-15 p-r-15" style="background-image: url(https://pluspng.com/img-png/restaurant-png-hd--1920.png);">
    <h2 class="tit6 t-center">
        My Orders
    </h2>
</section>

<div class="container">
    <div class="row my-3">
        @foreach ($orders as $order)
            <div class="col-md-12">
                <table class="table table-striped">
                    <legend>List Of Orders</legend>
                    <thead>
                        <tr>
                            <th scope="col">Image</th>
                            <th scope="col">Title</th>
                            <th scope="col" class="text-center">Quantity</th>
                            <th scope="col" class="text-center">Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($order->cart->items as $item)
                            <tr>
                                <td><img style="width: 30px;height: 30px;border-radius: 50%;" src="{{ asset('storage/'. $item['item']['image']) }}" alt=""></td>
                                <td><h6>{{ $item['item']['title'] }}</h6></td>
                                <td class="text-center"><span class="badge badge-danger">{{ $item['qty'] }}</span></td>
                                <td class="text-center">${{ $item['price'] }}</td>
                            </tr>
                        @endforeach
                        <tr>
                            <th scope="col" colspan="3">Total</th>
                            <td class="text-center">${{ $order->cart->totalPrice }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        @endforeach
    </div>
</div>

@endsection
@extends("layouts.app")

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mt-5">
                <div class="card-header" style="border-color: red;">Shopping Cart</div>
                <div class="card-body">
                    @if (Session::has('cart') and count(Session::get('cart')->items) > 0)
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">Image</th>
                                            <th scope="col">Title</th>
                                            <th scope="col" class="text-center">Quantity</th>
                                            <th scope="col" class="text-center">Price</th>
                                            <th scope="col" class="text-center">Action</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        @foreach ($products as $product)
                                            <tr>
                                                <td><img style="width: 30px;height: 30px;border-radius: 50%;" src="{{ asset('storage/'. $product['item']['image']) }}" alt=""></td>
                                                <td><h6>{{ $product['item']['title'] }}</h6></td>
                                                <td class="text-center"><span class="badge badge-danger">{{ $product['qty'] }}</span></td>
                                                <td class="text-center">${{ $product['price'] }}</td>
                                            <td class="text-center"><a href="{{ route('product.remove',$product['item']['id']) }}"><i class="fa fa-trash"></i></a></td>
                                            </tr>
                                        @endforeach
                                        <tr>
                                            <th scope="col" colspan="4">Total</th>
                                            <td class="text-center">${{ $totalPrice }}</td>
                                        </tr>
                                      </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <a href="{{ url('menu') }}" class="btn btn-secondary" type="button">Return Back</a>
                            </div>
                            <div class="col-md-6"></div>
                            <div class="col-md-2">
                                <button class="btn btn-danger" type="button" data-toggle="modal" data-target=".bd-example-modal-lg">
                                    Checkout
                                </button>
                            </div>
                        </div>
                    @else 
                        <div class="alert alert-danger" role="alert">
                            No Items in Cart
                        </div>
                        <a href="{{ url('menu') }}" class="btn btn-secondary" type="button">Check our Menu</a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
        <div class="modal-header text-center">
            <div class="logo">
                <a href="/">
                    <img src="{{ asset('images/icons/logo2.png') }}" alt="IMG-LOGO"
                        data-logofixed="{{ asset('images/icons/logo2.png') }}" />
                </a>
            </div>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <h1 class="display-4" style="color: red;">Your Total: ${{ $totalPrice ?? '' }}</h1>
        <form action="{{ route('order.store') }}" method="POST">
                @csrf
                <div class="row form-group my-2">
                    <div class="col-md-6">
                        <!-- Name -->
                        <span class="txt9">
                            Name
                        </span>

                        <div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
                            <input class="form-control" type="text" value="{{ Auth::user()->name }}" name="name" required placeholder="Name">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <span class="txt9">
                            Adress
                        </span>
                        
                        <div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23">
                            <input class="form-control" type="text" name="adress" required placeholder="Phone">
                        </div>
                    </div>
                </div>  
                        
                <div class="row form-group my-2">
                    <div class="col-md-6">
                        <!-- Name -->
                        <span class="txt9">
                            Phone
                        </span>
                        
                        <div class="wrap-inputname size12 bo2 bo-rad-10 m-t-3 m-b-23">
                        <input class="form-control" type="text" name="phone" required placeholder="Name">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <!-- Phone -->
                        <span class="txt9">
                            email
                        </span>

                        <div class="wrap-inputphone size12 bo2 bo-rad-10 m-t-3 m-b-23 mb-4">
                            <input class="form-control" type="email" name="email" value="{{ Auth::user()->email }}"  required placeholder="email">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
                <p>
                    - Pay on Delivery is available as a payment method for all items that are selled by Maro Restaurant.
                </p>
                <p>
                    - Pay on Delivery orders can be paid using Cash or other digital payment methods.
                </p>
            </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Ignore</button>
            <button type="submit" class="btn btn-primary">Save</button>
        </div>
        </div>
    </form>
    </div>
</div>
@endsection
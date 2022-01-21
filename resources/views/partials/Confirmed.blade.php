@extends("layouts.app")

@section("content")
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card mt-5">
                <div class="card-header" style="border-color: red;">Shopping Cart</div>
                <div class="card-body text-center">
                    <img src="{{ asset('images/icons/check.png') }}" alt="Check">
                    <p>
                        <h2>Order Confirmed</h2>
                        <h3>Thank you !!</h3>
                    </p>
                    <a href="{{ url('/') }}" class="btn btn-danger" type="button">Return</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
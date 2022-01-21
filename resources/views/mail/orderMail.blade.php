<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link
			rel="stylesheet"
			type="text/css"
			href="{{ asset('vendor/bootstrap/css/bootstrap.min.css') }}"
	/>
</head>
<body>
    @component('mail::message')
        <h2 style="color: red;">Hello {{ Auth::user()->name }}</h2>
        Your Order has been confirmed successfuy, our deliverey man will deliver the order as soon as possible. 
        Have a good Meal and Thank you for choosing Pato Restaurant!
        
        Sincerely,  
        MaroEtk team.
        @component('mail::button', ['url' => 'http://restaurant.test/'])
            MaroEtk Restaurant
        @endcomponent
        
    @endcomponent
</body>
</html>
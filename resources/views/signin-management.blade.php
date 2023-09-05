@extends('header')
@section('content')

<div class="container flex  justify-center items-center h-screen">
    <div class="card w-full lg:w-1/2" id="login-donor-card">
        <div class="card-header">
            <h1 class="font-semibold text-2xl text-center">Management Login</h1>
        </div>
        <div class="card-body">
            <form action="" id="mgmt-login-form">
                @CSRF
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name="medtech_username">
                        <label for="floatingInput">User Name or ID Number</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="medtech_secret">
                        <label for="floatingPassword">Password</label>
                    </div>
                    <small class="text-center w-100 mx-auto d-block my-3">Doesn't have an account yet? <button class="text-blue-700 underline" type="button" id="register-here">Register here.</button></small>
                    <button class="btn btn-primary text-blue-700 hover:text-blue-100 w-100" type="submit" id="btn-mgmt-login">Login to Management</button>
            </form>  
        </div>
    </div>
</div>

@endsection

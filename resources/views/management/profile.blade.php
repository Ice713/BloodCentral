@extends('management/header')
@section('content')

<!-- <main class="container">
    <h1 class="mt-20 text-2xl font-semibold">Profile</h1>
</main> -->

<div class="container flex  justify-center items-center h-screen">
    <div class="card w-full lg:w-1/2" id="login-donor-card">
        <div class="card-header">
            <h1 class="font-semibold text-2xl text-center">Management Profile</h1>
        </div>
        <div class="card-body">
            <div class="flex flex-col justify-center items-center">
                <button style="background-image: url('{{url('public/assets/pictures/admin.png')}}');" alt="Temporary profile" class="rounded-full w-40 h-40 bg-cover bg-center"></button>
                <h1 class="font-black text-4xl my-3">{{ Session::get('medtech_firstname') }} {{ Session::get('medtech_surname') }}</h1>
                <h2 class="font-semibold text-slate-500 text-xl">{{ Session::get('medtech_username') }} | {{ Session::get('medtech_id_number') }}</h2>
            </div>
        </div>
    </div>
</div>



@endsection

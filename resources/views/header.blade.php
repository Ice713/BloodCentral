@extends('links')
@section('header')

<div class="side-panel">
    <nav class="navbar navbar-dark bg-red-700 sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">BloodCentral</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end  bg-red-950" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title text-white" id="offcanvasDarkNavbarLabel">Menu</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{url('/')}}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{url('/login-donor')}}">Login as Donor</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login as Blood Requester</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Blood Community
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark">
                    <li><a class="dropdown-item" href="#">Blood Donation News</a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="{{ url('management/donors')}}">Blood Donation Calendar</a></li>
                    <li><a class="dropdown-item" href="#">Blood Donation Map</a></li>
                    </ul>
                </li>
                <li >
                    <hr class="dropdown-divider">
                </li>          
                <li class="nav-item {{ Session::get('donor_username') == '' ? 'hidden' : ''}}" >
                    <a class="nav-link text-blue-500" href="{{url('management/profile')}}">Profile: {{ Session::get('donor_username') }}</a>
                </li>         
                <li class="nav-item {{ Session::get('donor_username') == '' ? 'hidden' : ''}}">
                    <a class="nav-link text-red-600" href="{{ route('aglogout.logoutAccount') }}">Logout</a>
                </li>
                </ul>
                <form class="d-flex mt-3" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-success" type="submit">Search</button>
                </form>
            </div>
            </div>
        </div>
        </nav>
    </div>

    @yield('content')


@endsection

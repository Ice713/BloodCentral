@extends('links')
@section('header')

<div class="side-panel">
    <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">BloodCentral - Management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menu</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{url('management/')}}">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Blood Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Blogs and News</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Blood Community
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark">
                    <li><a class="dropdown-item" href="{{ url('management/donors')}}">Blood Donors</a></li>
                    <li><a class="dropdown-item" href="#">Blood Requesters/Recipients</a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="#">Blood Donation Shedule</a></li>
                    </ul>
                </li>      
                <li>
                    <hr class="dropdown-divider">
                </li>          
                <li class="nav-item">
                    <a class="nav-link text-blue-500" href="{{url('management/profile')}}">Profile: {{ Session::get('medtech_username') }}</a>
                </li>         
                <li class="nav-item">
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

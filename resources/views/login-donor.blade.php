@extends('header')
@section('content')

<div class="container flex  justify-center items-center h-screen">
    <div class="card w-full lg:w-1/2" id="login-donor-card">
        <div class="card-header">
            <h1 class="font-semibold text-2xl text-center">Donor Login</h1>
        </div>
        <div class="card-body">
            <form action="" id="donor-login-form">
                @CSRF

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
                        <label for="floatingInput">User Name</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                        <label for="floatingPassword">Password</label>
                    </div>
                    <small class="text-center w-100 mx-auto d-block my-3">Doesn't have an account yet? <button class="text-blue-700 underline" type="button" id="register-here">Register here.</button></small>
                    <button class="btn btn-primary text-blue-700 hover:text-blue-100 w-100" type="submit">Submit</button>
            </form>  
        </div>
    </div>

    
    <div class="card w-full mt-auto" id="register-donor-card">
        <div class="card-header">
            <h1 class="font-semibold text-2xl text-center">Donor Register</h1>
        </div>
        <div class="card-body">
            <form action="" id="donor-register-form">
                @CSRF

                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="blood_donor_number" placeholder="PRC BLOOD DONOR NUMBER" name="blood_donor_number">
                    <label for="blood_donor_number">PRC BLOOD DONOR NUMBER</label>
                </div>
                        <h1 class="text-xl">PERSONAL DATA</h1>
                        <h1 class="text-lg">Name:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Surname" aria-label="Surname" name="donor_surname">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="FirstName" aria-label="FirstName" name="donor_firstname">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="MiddleName" aria-label="MiddleName" name="donor_midname">
                            </div>
                        </div>
                        <div class="row g-3 mt-0.5">
                            <div class="col-sm input-group">
                                <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-cake-candles"></i></span>
                                <input type="date" class="form-control" placeholder="Birthdate" aria-label="Birthdate" name="donor_birthdate" id="donor_birthdate" value="1995-01-01" data-bs-toggle="tooltip" data-bs-html="true" data-bs-title="Birthdate">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Age" aria-label="Age" name="donor_age" readonly id="donor_age" readonly disabled>
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Civil Status" aria-label="Civil Status" name="donor_civilstatus">
                            </div>
                            <div class="col-sm">
                                <div class="form-check form-check-inline col-sm">
                                    <input class="form-check-input" type="radio" name="donor_sex" id="sex-male" value="M">
                                    <label class="form-check-label" for="sex-male">Male</label>
                                </div>
                                <div class="form-check form-check-inline col-sm">
                                    <input class="form-check-input" type="radio" name="donor_sex" id="sex-female" value="F">
                                    <label class="form-check-label" for="sex-female">Female</label>
                                </div>
                            </div>
                            
                            <!-- <div class="col-sm-2">
                                <input type="radio" class="form-control" placeholder="Sex" aria-label="Sex" name="donor_sex" id="sex-male">
                                <label for="sex-male" class="form-check-label">Male</label>
                            </div>
                            <div class="col-sm-2">
                                <input type="radio" class="form-control" placeholder="Sex" aria-label="Sex" name="donor_sex">
                            </div> -->
                        </div>
                        <h1 class="text-lg mt-0.5">Permanent Address:</h1>
                        <div class="row g-3">
                            <div class="col-sm-1">
                                <input type="text" class="form-control" placeholder="No." aria-label="No." name="donor_add_no">
                            </div>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" placeholder="Street" aria-label="Street" name="donor_add_st">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Barangay" aria-label="Barangay" name="donor_add_brgy">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Town/Municipality" aria-label="Town/Municipality" name="donor_add_town">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Province/City" aria-label="Province/City" name="donor_add_prov_cit">
                            </div>
                            <div class="col-sm-2">
                                <input type="text" class="form-control" placeholder="Zip Code" aria-label="Zip Code" name="donor_add_zip">
                            </div>
                        </div>
                        <h1 class="text-lg mt-0.5">Office Address:</h1>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Office Address" id="floatingTextarea" name="donor_offadd"></textarea>
                            <label for="OfficeAddress">Office Address</label>
                        </div>
                        <div class="row g-3 mt-0.5">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Nationality" aria-label="Nationality" name="donor_nationality">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Religion" aria-label="Religion" name="donor_religion">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Education" aria-label="Education" name="donor_education">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Occupation" aria-label="Occupation" name="donor_occupation">
                            </div>
                        </div>
                        <h1 class="text-lg mt-0.5">Contact No.:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Telephone No." aria-label="Telephone No." name="donor_contact_tel">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Mobile No." aria-label="Mobile No." name="donor_contact_mobile">
                            </div>
                            <div class="col-sm">
                                <input type="email" class="form-control" placeholder="E-mail Address" aria-label="E-mail Address" name="donor_contact_email">
                            </div>
                        </div>
                        <h1 class="text-lg mt-0.5">Identification No.:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="School" aria-label="School" name="donor_id_school">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Company" aria-label="Company" name="donor_id_company">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="PRC" aria-label="PRC" name="donor_id_PRC">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Driver's" aria-label="Driver's" name="donor_id_drivers">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="SSS/GSIS/BIR" aria-label="SSS/GSIS/BIR" name="donor_id_SSS_GSIS_BIR">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Others" aria-label="Others" name="donor_id_others" >
                            </div>
                        </div>
                        <h1 class="text-lg mt-0.5">BloodCentral Account:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Username" aria-label="Username" name="donor_username" id="username">
                            </div>
                            <div class="col-sm">
                                <input type="password" class="form-control" placeholder="Password" aria-label="Password" name="donor_wordpass" id="pass">
                            </div>                            
                            <div class="col-sm">
                                <input type="password" class="form-control" placeholder="Confirm Password" aria-label="Confirm Password" name="donor_rewordpass" id="repass">
                            </div>
                        </div>
                    <small class="text-center w-100 mx-auto d-block my-3">Already have an account? <button class="text-blue-700 underline"  type="button" id="login-here">Login here.</button></small>
                    <button class="btn btn-primary text-blue-700 hover:text-blue-100 w-100" type="submit" id="btn-donor-register">Submit</button>
            </form>  
        </div>
    </div>
     
</div>

@endsection
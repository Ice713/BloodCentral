@extends('management/header')
@section('content')

<main class="container mt-20">
    <div class="flex flex-row">
        <h1 class="text-2xl font-semibold">Donors</h1>
        <button class="ml-4 px-4 py-2 font-semibold text-sm bg-green-600 text-white rounded-full shadow-sm" type="button"  data-bs-toggle="modal" data-bs-target="#addDonorModal">Add Donor</button>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="addDonorModal" tabindex="-1" aria-labelledby="addDonorModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <form action="" id="add-donor-form">
                @CSRF
                <div class="modal-header">
                    <h1 class="modal-title fs-5 font-semibold" id="addDonorModalLabel">Add Donor</h1>
                    <button type="button" class="btn-close " data-bs-dismiss="modal" aria-label="Close"><i class="fa-solid fa-xmark"></i></button>
                </div>
                <div class="modal-body">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="blood_donor_number" placeholder="PRC BLOOD DONOR NUMBER" name="blood_donor_number">
                    <label for="blood_donor_number">PRC BLOOD DONOR NUMBER</label>
                </div>
                        <h1 class="text-xl">PERSONAL DATA</h1>
                        <h1 class="text-lg">Name:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Surname" aria-label="Surname" name="donor_surname" id="donor_surname">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="FirstName" aria-label="FirstName" name="donor_firstname" id="donor_firstname">
                            </div>
                            <div class="col-sm">   
                                <input type="text" class="form-control" placeholder="MiddleName" aria-label="MiddleName" name="donor_midname" id="donor_midname">
                            </div>
                        </div>
                        <div class="row g-3 mt-0.5">
                            <div class="col-sm input-group">
                                <span class="input-group-text" id="basic-addon1"><i class="fa-solid fa-cake-candles"></i></span>
                                <input type="date" class="form-control" placeholder="Birthdate" aria-label="Birthdate" name="donor_birthdate" id="donor_birthdate" value="1995-01-01" data-bs-toggle="tooltip" data-bs-html="true" data-bs-title="Birthdate">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Age" aria-label="Age" name="donor_age"  id="donor_age" readonly>
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Civil Status" aria-label="Civil Status" name="donor_civilstatus" id="donor_civilstatus">
                            </div>
                            <div class="col-sm">
                                <div class="form-check form-check-inline col-sm">
                                    <input class="form-check-input" type="radio" name="donor_sex" id="sex-male" value="M" {{ isset($data->donor_sex) == 'M' ? 'checked' : '' }}>
                                    <label class="form-check-label" for="sex-male">Male</label>
                                </div>
                                <div class="form-check form-check-inline col-sm">
                                    <input class="form-check-input" type="radio" name="donor_sex" id="sex-female" value="F"  {{ isset($data->donor_sex) == 'F' ? 'checked' : '' }}>
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
                                <input type="text" class="form-control" placeholder="No." aria-label="No." name="donor_add_no" id="donor_add_no">
                            </div>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" placeholder="Street" aria-label="Street" name="donor_add_st" id="donor_add_st">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Barangay" aria-label="Barangay" name="donor_add_brgy" id="donor_add_brgy">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Town/Municipality" aria-label="Town/Municipality" name="donor_add_town" id="donor_add_town">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Province/City" aria-label="Province/City" name="donor_add_prov_cit" id="donor_add_prov_cit">
                            </div>
                            <div class="col-sm-2">
                                <input type="text" class="form-control" placeholder="Zip Code" aria-label="Zip Code" name="donor_add_zip" id="donor_add_zip">
                            </div>
                        </div>
                        <h1 class="text-lg mt-0.5">Office Address:</h1>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Office Address" id="floatingTextarea" name="donor_offadd" id="donor_offadd"></textarea>
                            <label for="OfficeAddress">Office Address</label>
                        </div>
                        <div class="row g-3 mt-0.5">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Nationality" aria-label="Nationality" name="donor_nationality" id="donor_nationality">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Religion" aria-label="Religion" name="donor_religion" id="donor_religion">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Education" aria-label="Education" name="donor_education" id="donor_education">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Occupation" aria-label="Occupation" name="donor_occupation" id="donor_occupation">
                            </div>
                        </div>
                        <h1 class="text-lg mt-0.5">Contact No.:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Telephone No." aria-label="Telephone No." name="donor_contact_tel" id="donor_contact_tel">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Mobile No." aria-label="Mobile No." name="donor_contact_mobile" id="donor_contact_mobile">
                            </div>
                            <div class="col-sm">
                                <input type="email" class="form-control" placeholder="E-mail Address" aria-label="E-mail Address" name="donor_contact_email" id="donor_contact_email">
                            </div>
                        </div>
                        <h1 class="text-lg mt-0.5">Identification No.:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="School" aria-label="School" name="donor_id_school" id="donor_id_school">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Company" aria-label="Company" name="donor_id_company" id="donor_id_company">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="PRC" aria-label="PRC" name="donor_id_PRC" id="donor_id_PRC">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Driver's" aria-label="Driver's" name="donor_id_drivers" id="donor_id_drivers">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="SSS/GSIS/BIR" aria-label="SSS/GSIS/BIR" name="donor_id_SSS_GSIS_BIR" id="donor_id_SSS_GSIS_BIR">
                            </div>
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Others" aria-label="Others" name="donor_id_others" id="donor_id_others">
                            </div>
                        </div>

                        <!-- BLOOD DONOR ACCOUNT, TO BE COPIED TO A SEPARATE MODAL -->
                        <!-- <h1 class="text-lg mt-0.5">BloodCentral Account:</h1>
                        <div class="row g-3">
                            <div class="col-sm">
                                <input type="text" class="form-control" placeholder="Username" aria-label="Username" name="donor_username" id="username">
                            </div>
                            <div class="col-sm">
                                <input type="password" class="form-control" placeholder="Password" aria-label="Password" name="donor_wordpass" id="pass" >
                            </div>                            
                            <div class="col-sm">
                                <input type="password" class="form-control" placeholder="Confirm Password" aria-label="Confirm Password" name="donor_rewordpass" id="repass">
                            </div>
                        </div> -->


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary text-slate-700 hover:text-slate-100 btn-modal-close" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary text-slate-700 hover:text-slate-100" id="btn-add-donor">Add Donor</button>
                </div>
            </form>
        </div>
    </div>
    </div>


    <!-- Table -->
    <table class="table" id="donors_table">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Handle</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Display the Data here -->
            @foreach($donors as $data)
            <tr>
                <td>{{ $data->blood_donor_number }}</td>
                <td>{{ $data->donor_firstname }}</td>                
                <td>{{ $data->donor_surname }}</td>
                <td>{{ $data->donor_username }}</td>
                <td colspan="2" class="flex">
                    <button type="button" class="btn btn-secondary edit-donor ms-2 text-slate-700 hover:text-slate-100" margin-auto="{{ $data->blood_donor_number }}" ><i class="fa-solid fa-pen-to-square"></i> <span class="hidden md:inline-block">Edit</span></button>
                    <button type="button" class="btn btn-danger delete-donor ms-2 text-red-700 hover:text-red-100" margin-auto="{{ $data->blood_donor_number }}"><i class="fa-solid fa-trash-can"></i></i> <span class="hidden md:inline-block">Delete</span></button>

                   
                </td>
            </tr>
            @endforeach
            </tbody>
    </table>
</main>

@endsection

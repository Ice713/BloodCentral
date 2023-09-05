$(document).ready(function (){

    // // add donor
    // $(document).on('submit', '#add-donor-form', function(e) {
    //     e.preventDefault(); // prevent page refresh after form submission
    //     // alert("Success");

    //     var uname = $('#username').val();
    //     var idnum = $('#blood_donor_number').val();
    //     var pword1 = $('#pass').val();
    //     var pword2 = $('#repass').val();

    //     if(idnum == ''){
    //         Swal.fire({
    //             icon: 'error',
    //             title: 'Error!',
    //             text: 'PRC Blood Donor Number cannot be empty.'
    //         })
    //     }else if(uname == ''){
    //         Swal.fire({
    //             icon: 'error',
    //             title: 'Error!',
    //             text: 'Username cannot be empty.'
    //         })
    //     }else if(pword1 != pword2) {
    //             // alert('Password does not match');
    //             Swal.fire({
    //                 icon: 'error',
    //                 title: 'Error!',
    //                 text: 'Password does not match'
    //             })
    //     } else if(pword1.length < 8 || pword1.length > 12) {
    //         // alert('Password should be 8 to 12 characters.');
    //         Swal.fire({
    //             icon: 'error',
    //             title: 'Error!',
    //             text: 'Password should be 8 to 12 characters.'
    //         })
    //     } else {
    //         //submit the data             
    //         $.ajax({
    //             url: "add-donor", // url to be routed
    //             method: "POST",
    //             data: $('#add-donor-form').serialize(),
    //             beforeSend:function(){
    //                 $("#btn-add-donor").attr('disabled', 'true');
    //             },
    //             success:function(data) {
    //                 if (data == 2) {
    //                 Swal.fire({
    //                     icon: 'error',
    //                     title: 'Error!',
    //                     text: 'Donor record already exists!'
    //                 })
    //                 } else if(data == 1) {
    //                     // alert("Account successfully saved!");
    //                     $('#add-donor-form')[0].reset(); // clear the form
    //                     Swal.fire({
    //                         icon: 'success',
    //                         title: 'Success!',
    //                         text: 'Donor information successfully added!'
    //                     })
    //                 } else {
    //                     // alert("Account could not be saved!");
    //                     Swal.fire({
    //                         icon: 'error',
    //                         title: 'Error!',
    //                         text: 'Donor information could not be saved. Please try again later!'
    //                     })
    //                 }
    //                 $('#donors_table').load(location.href + ' #donors_table');

    //             }
    //         }); 
    //         // $('#addDonorModal').hide();
    //         $('#addDonorModal').modal('hide');



    //     }  
    // });

    // add donor
    $(document).on('submit', '#add-donor-form', function(e) {
        e.preventDefault(); // prevent page refresh after form submission
        // alert("Success");

        var idnum = $('#blood_donor_number').val();

        if(idnum == ''){
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: 'PRC Blood Donor Number cannot be empty.'
            })
        }else{
            //submit the data             
            $.ajax({
                url: "add-donor", // url to be routed
                method: "POST",
                data: $('#add-donor-form').serialize(),
                beforeSend:function(){
                    $("#btn-add-donor").attr('disabled', 'true');
                },
                success:function(data) {
                    if (data == 2) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Donor record already exists!'
                    })
                    } else if(data == 1) {
                        // alert("Account successfully saved!");
                        $('#add-donor-form')[0].reset(); // clear the form
                        Swal.fire({
                            icon: 'success',
                            title: 'Success!',
                            text: 'Donor information successfully added!'
                        })
                    } else {
                        // alert("Account could not be saved!");
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: 'Donor information could not be saved. Please try again later!'
                        })
                    }
                    $('#donors_table').load(location.href + ' #donors_table');

                }
            }); 
            // $('#addDonorModal').hide();
            $('#addDonorModal').modal('hide');

        }  
    });

    $(document).on('change', '#donor_birthdate', function(e) {
        // Get the entered birthdate value from the input field
        var birthdateValue = $('#donor_birthdate').val();

        // Calculate the age based on the entered birthdate
        var today = new Date();
        var birthdate = new Date(birthdateValue);
        var age = today.getFullYear() - birthdate.getFullYear();
        var monthDiff = today.getMonth() - birthdate.getMonth();
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthdate.getDate())) {
            age--;
        }


        $('#donor_age').val(age);
    });

    // clear form / modal when closing
    $(document).on('click', '.btn-modal-close', function(e){
        $('#add-donor-form')[0].reset(); // clear the form
    });

    //edit donor data
    $(document).on('click', '.edit-donor', function(e){
        e.preventDefault(); // prevent page refresh after form submission

        var post_ID = $(this).attr('margin-auto');  
        $.ajax({  
            url:"get-donor-edit",  
            method: "POST",  
            data: {post_ID:post_ID},  
            dataType:"json",  
            success: function(data){  
                if (data.status == 1){  
                    $("#blood_donor_number").val(data.post.blood_donor_number);
                    $("#donor_surname").val(data.post.donor_surname);  
                    $("#donor_firstname").val(data.post.donor_firstname);  
                    $("#donor_midname").val(data.post.donor_midname);  
                    $("#donor_birthdate").val(data.post.donor_birthdate);  
                    $("#donor_age").val(data.post.donor_age);  
                    $("#donor_civilstatus").val(data.post.donor_civilstatus);  
                    $("#donor_sex").val(data.post.donor_sex);  
                    $("#donor_add_no").val(data.post.donor_add_no);  
                    $("#donor_add_st").val(data.post.donor_add_st);  
                    $("#donor_add_brgy").val(data.post.donor_add_brgy);  
                    $("#donor_add_town").val(data.post.donor_add_town);  
                    $("#donor_add_prov_cit").val(data.post.donor_add_prov_cit);  
                    $("#donor_add_zip").val(data.post.donor_add_zip);  
                    $("#donor_offadd").val(data.post.donor_offadd);  
                    $("#donor_nationality").val(data.post.donor_nationality);  
                    $("#donor_religion").val(data.post.donor_religion);  
                    $("#donor_education").val(data.post.donor_education);  
                    $("#donor_occupation").val(data.post.donor_occupation);  
                    $("#donor_contact_tel").val(data.post.donor_contact_tel);  
                    $("#donor_contact_mobile").val(data.post.donor_contact_mobile);  
                    $("#donor_contact_email").val(data.post.donor_contact_email);  
                    $("#donor_id_school").val(data.post.donor_id_school);  
                    $("#donor_id_company").val(data.post.donor_id_company);  
                    $("#donor_id_PRC").val(data.post.donor_id_PRC);  
                    $("#donor_id_drivers").val(data.post.donor_id_drivers);  
                    $("#donor_id_SSS_GSIS_BIR").val(data.post.donor_id_SSS_GSIS_BIR);  
                    $("#donor_id_others").val(data.post.donor_id_others);  
                    // $("#postblog-form")[0].reset();

                    $("#addDonorModalLabel").html("Edit Donor Information");
                    // $("#btn-save").removeClass("btn-primary");
                    // $("#btn-save").addClass("btn-success");
                    $("#btn-add-donor").html("Update");
                    // $("#blog_id_div").show();

                    $('#addDonorModal').modal('show');  
                }
            }  
        });  
    });
    
    // delete donor data
    $(document).on('click', '.delete-donor', function(e){
        e.preventDefault(); // prevent page refresh after form submission


        Swal.fire({
            title: 'Do you want to delete this donor record?',
            showCancelButton: true,
            confirmButtonText: 'Delete',
          }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {

                var post_ID = $(this).attr('margin-auto');  
                $.ajax({  
                    url:"delete_donor",  
                    method: "POST",  
                    data: {post_ID:post_ID},  
                    dataType:"json",  
                    success: function(data){
                        if (data == 1){  

                            Swal.fire({
                                icon: 'info',
                                title: 'Deleted!',
                                text: 'Donor record successfully deleted!'
                            })
                            // .then(function(){
                            //     window.location.href = "donors"; // redirect to admin page
                            // })
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Something went wrong!',
                                text: 'Failed to delete donor record! Please try again.'
                            })
                            // .then(function(){
                            //     window.location.href = "donors"; // redirect to admin page
                            // })
                        }
                    } 
                });
            }
            $('#donors_table').load(location.href + ' #donors_table');
        })

    }); 

    
    // show hide card on donor login/register
    $('#register-donor-card').hide();

    $(document).on('click', '#register-here', function(){
        $('#login-donor-card').hide();
        $('#register-donor-card').show();
    });

    
    $(document).on('click', '#login-here', function(){
        $('#login-donor-card').show();
        $('#register-donor-card').hide();
    });
    // show hide card on donor login/register


    //donor registration
    $(document).on('submit', '#donor-register-form', function(e) {
        e.preventDefault(); // prevent page refresh after form submission
        // alert("Success");
        var uname = $('#username').val();
        var idnum = $('#blood_donor_number').val();
        var pword1 = $('#pass').val();
        var pword2 = $('#repass').val();

        
        if(idnum == ''){
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: 'PRC Blood Donor Number cannot be empty.'
            })
        }else if(uname == ''){
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: 'Username cannot be empty.'
            })
        }else if(pword1 != pword2) {
            // alert('Password does not match');
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: 'Password does not match'
            })
        } else if(pword1.length < 8 || pword1.length > 12) {
            // alert('Password should be 8 to 12 characters.');
            Swal.fire({
            icon: 'error',
            title: 'Error!',
            text: 'Password should be 8 to 12 characters.'
            })
        } else {
            //submit the data            
            $.ajax({
                url: "donor-register", // url to be routed
                method: "POST",
                data: $('#donor-register-form').serialize(),
                beforeSend:function(){
                    $("btn-donor-register").attr('disabled', 'true');
                },
                success:function(data) {
                    if (data == 2) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Donor record already exists!'
                    })
                    } else if(data == 1) {
                        // alert("Account successfully saved!");
                        $('#donor-register-form')[0].reset(); // clear the form
                        Swal.fire({
                            icon: 'success',
                            title: 'Success!',
                            text: 'Donor information successfully added!'
                        })
                    } else {
                        // alert("Account could not be saved!");
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: 'Donor information could not be saved. Please try again later!'
                        })
                    }
                }
            }); 
        }     
    });

    //mgmt
    $(document).on('submit', '#mgmt-login-form', function(e) {
        e.preventDefault(); // prevent page refresh after form submission


        $.ajax({
            url: "login-medtech",
            method: "post",
            data: $('#mgmt-login-form').serialize(),
            beforeSend: function() {
            $('#btn-mgmt-login').attr('disabled', true);
            },
            success: function(data) { 
            
                if (data == 1) {
                    $('#btn-mgmt-login').attr('disabled', 'false');
                    // alert('ACCESS GRANTED! Welcome aboard.');
                    Swal.fire({
                        icon: 'success',
                        title: 'Success!',
                        text: 'Login successful! Welcome back.',
                        timer: 2000,
                        allowOutsideClick: false,
                        showConfirmButton: false,
                    }).then(function(){
                    window.location.href = "management"; // redirect to admin page
                    })
                } else {
                    // alert("ACCESS DENIED! Incorrect username or password. Please try again.");
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'ACCESS DENIED! Incorrect username or password. Please try again.!'
                    })
                }
            }
        });
    });

    // CSRF TOKEN HEADER
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN' : $('meta[name="csrf-token').attr
            ('content')
        }
    });

    

    $('.before_crop_image').on('change', function() {

        // Photo Uploader
        $image_crop = $('#image_demo').croppie({
            enableExif:true,
            viewport: {
                width:650,
                height:300,
                type:'square'
            },
            boundary: {
                width:700,
                height:350
            }
        });

        var reader = new FileReader();
        var blog_id = $(this).attr('id');

        reader.onload = function(event) {
            $image_crop.croppie('bind', {
                url:event.target.result
            }).then(function() {
                console.log('JQuery Bind Complete');
            });
        }

        reader.readAsDataURL(this.files[0]);
        $('#blog_id_photo').val(blog_id);
        $('#imageModal').modal('show');

    });

    // Crop and Upload
    $('#btn-upload').click(function(event){
        event.preventDefault(); // prevent refresh
        $image_crop.croppie('result', {
            type:'canvas',
            size:'viewport'
        }).then(function(response){
            var blog_id =  $('#blog_id_photo').val();

            $.ajax({
                url: "upload-photo",
                method: "POST",
                cache: false,
                data: {'image':response, 'blog_id':blog_id},
                success: function(data){
                    $('#imageModal').modal('hide');
                    if(data == 1){
                        Swal.fire({
                            icon: 'success',
                            title: 'Success!',
                            text: 'Photo uploaded successfully!'
                        })
                        window.location.reload();
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: 'Failed to upload photo! Please try again.'
                        })
                    }
                }
            });
        });
    });

});

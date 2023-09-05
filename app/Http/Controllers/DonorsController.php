<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;


class DonorsController extends Controller
{
    public function addDonor(Request $request){
        $check_number = DB::table('donors_personal_data')->where('blood_donor_number', $request->input('blood_donor_number'))->first();

        if ($check_number) {
            return 2;
        } else{
                $save = DB::table('donors_personal_data')->insert([
                'blood_donor_number' => $request->input('blood_donor_number'),
                'donor_surname' => $request->input('donor_surname'),
                'donor_firstname' => $request->input('donor_firstname'),
                'donor_midname' => $request->input('donor_midname'),
                'donor_birthdate' => $request->input('donor_birthdate'),
                'donor_age' => $request->input('donor_age'),
                'donor_civilstatus' => $request->input('donor_civilstatus'),
                'donor_sex' => $request->input('donor_sex'),
                'donor_add_no' => $request->input('donor_add_no'),
                'donor_add_st' => $request->input('donor_add_st'),
                'donor_add_brgy' => $request->input('donor_add_brgy'),
                'donor_add_town' => $request->input('donor_add_town'),
                'donor_add_prov_cit' => $request->input('donor_add_prov_cit'),
                'donor_add_zip' => $request->input('donor_add_zip'),
                'donor_offadd' => $request->input('donor_offadd'),
                'donor_nationality' => $request->input('donor_nationality'),
                'donor_religion' => $request->input('donor_religion'),
                'donor_education' => $request->input('donor_education'),
                'donor_occupation' => $request->input('donor_occupation'),
                'donor_contact_tel' => $request->input('donor_contact_tel'),
                'donor_contact_mobile' => $request->input('donor_contact_mobile'),
                'donor_contact_email' => $request->input('donor_contact_email'),
                'donor_id_school' => $request->input('donor_id_school'),
                'donor_id_company' => $request->input('donor_id_company'),
                'donor_id_PRC' => $request->input('donor_id_PRC'),
                'donor_id_drivers' => $request->input('donor_id_drivers'),
                'donor_id_SSS_GSIS_BIR' => $request->input('donor_id_SSS_GSIS_BIR'),
                'donor_id_others' => $request->input('donor_id_others')
                
            ]);

            return $save ? 1 : 0;
        }
    }

    public function displayDonors() {
        $alldonors = DB::table('donors_personal_data')->orderby('blood_donor_number', 'DESC')->get();

        if ($alldonors){
            return view('management/donors', ['donors'=>$alldonors]); 
        }
        //first parameter below is name of blade
        return view('management/donors'); 
    }

    public function fetchDonor(Request $request){
        $get_edit = DB::table('donors_personal_data')->where('blood_donor_number','=', $request->post_ID)->first();

        return !is_null($get_edit) ? (['status' => 1, 'post' => $get_edit]) : (['status' => 0]);
    }

    public function deleteDonor(Request $request){
        $delete = DB::table('donors_personal_data')->where('blood_donor_number', '=', $request->post_ID)->delete();

        return $delete ? 1 : 0;
    }
}

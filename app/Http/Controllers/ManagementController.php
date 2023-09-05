<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;

class ManagementController extends Controller
{
    public function index(){
        // return view('management/index');

        if (session()->has('medtech_id_number')) {
            // Key exists in the session
            return view('management/index');
        } else {
            return view('/signin-management');
        }
    }

    public function donors(){
        return view('management/donors');
    }

    public function profile(){
        return view('management/profile');
    }

    // admin account login
    public function loginMedtechAccount(Request $request) {
        //check if username is existing
        $check = DB::table('prc_medtech_tb')
            ->where('medtech_username', '=', $request->medtech_username)
            ->orWhere('medtech_id_number', '=', $request->medtech_username)
            ->first();

        //check if data is not null
        if(!(is_null($check))) {
            // check if the password is correct
            if(password_verify($request->medtech_secret, $check->medtech_secret)) {

                $request->session()->put('medtech_id_number', $check->medtech_id_number);
                $request->session()->put('medtech_firstname', $check->medtech_firstname);
                $request->session()->put('medtech_midname', $check->medtech_midname);
                $request->session()->put('medtech_surname', $check->medtech_surname);
                $request->session()->put('medtech_username', $check->medtech_username);

                //kung tama ang password
                return 1;
            } else {
                //kung mali
                return 0;
            }
        } else {
            return 0;
        }

    }

    public function logoutAccount() {
        Session::flush(); //to destroy sessions completely

        return redirect('/');
    }

    public function photoUploader(Request $request){
        // directory where we save the photo
        $folderPath = public_path('assets/blog-photos/');

        //convert the image into a new image
        $image_parts = explode(";base64,", $request->image);
        $image_type_aux = explode("image/", $image_parts[0]);
        $image_type = $image_type_aux[1];
        $new_photo = base64_decode($image_parts[1]); // this is the cropped and new photo

        //create the filename
        $image_name = time().'.png';
        $imageFullPath = $folderPath.$image_name;

        // put or save the new image in the full path
        file_put_contents($imageFullPath, $new_photo);

        // save the filename to the table with the specific blog
        $update = DB::table('blog_posts')->where('id', '=', $request->blog_id)->update([
            'blog_photo' => $image_name
        ]);

        return (!is_null($update)) ? 1 : 0;
    }
}

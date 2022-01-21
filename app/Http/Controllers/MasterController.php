<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Reservation;
use App\Category;
use App\Gallery;
use App\Post;
use App\Plat;
use App\Contact;

class MasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $arr["posts"] = Post::orderBy("created_at","asc")
                            ->take(3)->get();
        return view("partials.index")->with($arr);
    }

    // Enregistre les messages de clients (Contact Us)
    public function addcontact(Contact $contact, Request $req)
    {
        $contact->name = $req->name;
        $contact->email = $req->email;
        $contact->phone = $req->phone;
        $contact->message = $req->message;
        $contact->save();
        return redirect()->route("partials.contact")->with('success','Message Sent Successfully');
    }

    //Afficher la partie Blog
    public function blog($id = null)
    {
        if($id){
            $arr["posts"] = Post::orderBy('created_at','desc')
                            ->whereStatus('PUBLISHED')
                            ->whereCategoryId($id)
                            ->paginate(4);
        }else{
            $arr["posts"] = Post::orderBy('created_at','desc')
                            ->whereStatus('PUBLISHED')
                            ->paginate(4);
        }
        
        $arr["categories"] = Category::all();
        return view('partials.blog', ['id' => $id])->with($arr,$id);
    }

    public function singlepost($id)
    {
        $arr["post"] = Post::wherePostId($id)->first();
        $arr["categories"] = Category::all();
        
        $nbr = Post::whereSlug($id)->first();
        $nbr->nbr_visite++;
        $nbr->save();
        return redirect()->route('partials.postdetail')->with($arr);                  
    }

    public function reserver(Reservation $res, Request $req)
    {
        $res->name = $req->name;
        $res->date = $req->date;
        $res->time = $req->time;
        $res->people = $req->people;
        $res->phone = $req->phone;
        $res->email = $req->email;
        $res->save();
        return view("partials.reservation")->with('success','Your Booking created, We Call you !');
    }

    public function gallery($type = null)
    {
        if($type){
            $arr["galleries"] = Gallery::whereType($type)->get();
        }
        else{
            $arr["galleries"] = Gallery::all();
        }
        return view("partials.gallery")->with($arr,$type);
    }

    public function menu($type = null)
    {
        if($type){
            $arr["plats"] = Plat::whereType($type)->get();
        }
        else{
            $arr["plats"] = Plat::all();
        }
        return view("partials.menu")->with($arr,$type);
    }
}
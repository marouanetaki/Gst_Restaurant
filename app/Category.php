<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Plat;
use App\Post;

class Category extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    public function plats(){
        return $this->hasMany(Plat::class);
    }

    public function posts(){
        return $this->hasMany(Post::class);
    }
}

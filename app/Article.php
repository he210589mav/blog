<?php

namespace App;

use App\Category;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Article extends Model
{
    protected $fillable=['title','slug','description_short','description','image','image_show','meta_title',
        'meta_description','meta_keyword','published','created_at','created_by','modified_by'];

    public function setSlugAttribute($value){
        $this->attributes['slug']= Str::slug(mb_substr($this->title,0,40)."-".\Carbon\Carbon::now()->format('dmyHi'),
            '-');
    }

    public function categories(){
        return $this->morphToMany('App\Category', 'categoryable');
    }


    public function children(){
        return $this->hasMany(self::class,'post_id');
    }
    public function scopeLastArticles($query,$count){
        return $query->orderBy('created_at', 'desc')->take($count)->get();
    }
    public function tags(){
       return $this->belongsToMany(
          Tag::class,
         'post_tags',
       'post_id',
     'tag_id'

    );
    }
    public function uploadImage($image){
        if($image == null){return;}
        Storage::delete('uploads/'.$this->image);
        $filename=str_random(10).'.'.$image->extension();
        $image->saveAs('uploads',$filename);
        $this->image=$filename;
        $this->save();
    }
    public function setTags($ids){
        if($ids==null){return;}
        $this->tags()->sync($ids);
    }
    public function hasPrevious()
    {
        return self::where('id', '<', $this->id)->max('id');
    }

    public function getPrevious()
    {
        $postID = $this->hasPrevious(); //ID
        return self::find($postID);
    }

    public function hasNext()
    {
        return self::where('id', '>', $this->id)->min('id');
    }

    public function getNext()
    {
        $postID = $this->hasNext();
        return self::find($postID);
    }
    public function related()
    {
        return self::all()->except($this->id);
    }
    public function remove()
    {
        $this->removeImage();
        $this->delete();
    }

    public function removeImage()
    {
        if($this->image != null)
        {
            Storage::delete('uploads/' . $this->image);
        }
    }

    public function getImage()
    {
        if($this->image == null)
        {
            return '/img/no-image.png';
        }

        return '/uploads/' . $this->image;

    }


}

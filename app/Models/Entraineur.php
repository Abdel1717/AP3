<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Entraineur extends Authenticatable
{
    use HasFactory;

    protected $table = "Entraineur";
    protected $primaryKey = "idPersonne";
    public $timestamp = "false";
    protected $fillable = ['formation', 'tauxHorraire'];

    public function personne(){
        return $this->hasOne(Personne::class, 'idPersonne');
    }

    public function calendrierentrainement(){
        return $this->belongsToMany('App\Models\calendrierEntrainement', 'Organiser', 'idPersonne', 'idCalendrier');
    }

    public function Reunion(){
        return $this->belongsToMany('App\Models\Reunions', 'Plannifier', 'idPersonne', 'idRéunion');
    }
    

    

}

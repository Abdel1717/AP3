<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Joueur extends Authenticatable
{
    use HasFactory;

    protected $table = "Joueur";
    protected $primaryKey = "idPersonne";
    public $timestamp = "false";
    protected $fillable = ['numero', 'poste'];

    public function Personne(){
        return $this->hasOne(Personne::class, 'idPersonne');
    }

    public function categorie(){
        return $this->belongsTo(Categorie::class, 'idCategorie');
    }
    

}

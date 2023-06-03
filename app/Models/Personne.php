<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Personne extends Authenticatable
{
    use HasFactory;

    protected $table = "Personne";
    protected $primaryKey = "idPersonne";
    public $timestamps = false;
    protected $fillable = ['nomPersonne', 'prenomPersonne', 'Age', 'email', 'identifiant', 'mot_de_passe','type'];

    public function entraineur(){
        return $this->hasOne('App\Models\Entraineur', 'idPersonne');
    }

    public function joueur(){
        return $this->hasOne('App\Models\Joueur', 'idPersonne');
    }

    public function calendrierEntrainement(){
        return $this->belongsToMany('App\Models\CalendrierEntrainement','Participer','idPersonne', 'idCalendrier');
    }

    public function evenement(){
        return $this->belongsToMany('App\Models\Evenement', 'Reserver', 'idPersonne', 'idEvenement_');
    }

    public function Tarif(){
        return $this->belongsTo(Tarifs::class, 'idTarif');
    }
    
public function getAuthPassword(){
    return $this->mot_de_passe;
}

public function getType()
{
    return $this->attributes['type'];
}

}



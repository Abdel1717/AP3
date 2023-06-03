<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Model;

class Joueur extends Authenticatable
{
    use HasFactory;

    protected $table = "Joueur";
    protected $primaryKey = "idPersonne";
    public $timestamp = "false";
    protected $fillable = ['numero', 'poste'];

    public function personne(){
        return $this->hasOne(Personne::class, 'idPersonne');
    }

    public function categorie(){
        return $this->belongsTo(Categorie::class, 'idCategorie');
    }

// Methode de base (Bonne Methode) Non fonctionnelle
   /*  public function getStatsJoueur($id)
{
    $joueur = Joueur::find($id);

    // Nombre de séances
    $nombreSeances = $joueur->entrainements()->count();

    // Durée totale
    $dureeTotale = $joueur->entrainements()->sum('dureetotal');

    return [
        'nombre_seances' => $nombreSeances,
        'duree_totale' => $dureeTotale
    ]; 
}
*/
    

}

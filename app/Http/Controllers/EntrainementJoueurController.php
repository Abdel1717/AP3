<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CalendrierEntrainement;
use App\Models\Categorie;
use App\Models\Joueur ;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
 //php artisan make:migration add_fields_to_entrainement_joueur_table --table=EntrainementJoueur


class EntrainementJoueurController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $joueur = Auth::user();        
        //dd($joueur->idPersonne);
        //$Joueur1 = Joueur::with('personne')->get(); Bonne lmethode Non fonctionnel
        $Les_EntrainementsJoueurs = DB::table('EntrainementJoueur')
                           ->join('CalendrierEntrainement', 'EntrainementJoueur.idCalendrier', '=', 'CalendrierEntrainement.idCalendrier')
                           ->join('Categorie', 'CalendrierEntrainement.idCategorie', '=', 'Categorie.idCategorie')
                           ->where('EntrainementJoueur.idPersonne', '=', Auth::id())
                            ->get();

            $nombreSeances = DB::table('EntrainementJoueur')
                            ->where('idPersonne', Auth::id())
                            ->count();
                    
            $dureeTotale = DB::table('EntrainementJoueur')
                            ->where('idPersonne', Auth::id());
                         

             $statJoueur[] = ['nombreSeances' => $nombreSeances,'dureeTotale' => $dureeTotale];
                            //dd($statJoueur);
        return view("Entrainements.gestionEntrainementsJoueurs", ['Les_EntrainementsJoueurs'=>$Les_EntrainementsJoueurs], ['StatJoueur'=> $statJoueur]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $Un_EntrainementJoueur = CalendrierEntrainement::find($id);
        $Categorie = $Un_EntrainementJoueur ->Categorie ?? 'none';
        return view('Entrainements.gestionEntrainementsJoueurs', ['Un_EntrainementJoueur'=>$Un_EntrainementJoueur]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

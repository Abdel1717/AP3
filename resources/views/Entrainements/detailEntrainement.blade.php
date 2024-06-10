@extends('template')

@section('content')

<h1>{{$Un_Entrainement->seance}} </h1>
<ul>
    <li>{{$Un_Entrainement->dateCalendrier}}</li>
    <li>{{$Un_Entrainement->heureCalendrier}}</li>
</ul>

<div class="table-responsive">
                            <table class="table text-white">
                            <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nom</th>
                                        <th>Prenom</th>
                                        <th>Age</th>
                                        <th>Email</th>
                                        <th>Numero</th>
                                        <th>poste</th>
                                        <th>Categorie</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                 
                        @foreach ($Les_Joueurs as $e)
                            <tr>
                                <td>
                                {{$e->idPersonne}}
                                </td>

                                <td>
                                {{$e->nomPersonne}}
                                </td>
                                <td>
                                {{$e->prenomPersonne}}
                                </td>
                                <td>
                                {{$e->Age}} 
                                </td>
                                <td>
                                {{$e->email}}
                                </td>
                                <td>
                                {{$e->numero}}
                                </td>
                                <td>
                                {{$e->poste}} 
                                </td>
                                <td>
                                {{$e->nomCategorie}}
                                
                            </tr>
                        @endforeach

            
        </div>
    </div>
</div>

</tbody>


@endsection
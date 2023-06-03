<?php

namespace App\Http\Middleware;

use Closure;

class PersonneMiddleware
{
    public function handle($request, Closure $next)
    {
        if ($request->user() && $request->user()->getType() === 'personne') {
            return $next($request);
        }

        return redirect('/entrainementsJoueurs');
    }
}

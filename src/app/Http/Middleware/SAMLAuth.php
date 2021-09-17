<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\URL;
use Aacotroneo\Saml2\Facades\Saml2Auth;

use Log;

class SAMLAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // SAMLログイン認証
        if (Auth::guest()) {
            if ($request->ajax()) {
                return response('Unauthorized.', 401);
            } else {
                Saml2Auth::login(URL::full());
            }
        }

        return $next($request);
    }
}

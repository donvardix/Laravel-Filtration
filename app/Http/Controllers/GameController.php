<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Game;

class GameController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('search')) {
            $games = Game::where('name', 'like', "%$request->search%")->get();
        } else {
            $games = Game::orderBy('name', 'asc')->get();
        }

        return view('games.index', compact('games', 'request'));
    }

    public function create()
    {
        return view('games.create');
    }

    public function store(Request $request)
    {
        Game::create([
            'name'=>$request->name,
            'steam'=>$request->steam,
            'steam_info'=>$request->noteSteam,
            'origin'=>$request->origin,
            'origin_info'=>$request->noteOrigin,
            'uplay'=>$request->uplay,
            'uplay_info'=>$request->noteUPlay,
            'epicgames'=>$request->epicGames,
            'epicgames_info'=>$request->noteEpicGames,
            'gog'=>$request->gog,
            'gog_info'=>$request->noteGog
        ]);
        return redirect(route('games.create'));
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        Game::destroy($id);
    }
}

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
            $games = Game::all();
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
            'steam'=>[$request->steam, $request->noteSteam],
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

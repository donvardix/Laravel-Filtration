@extends('games.layouts.layout')
@section('content')
<table class="table table-sm table-striped table-hover">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col" class="equal">Steam</th>
        <th scope="col" class="equal">Origin</th>
        <th scope="col" class="equal">UPlay</th>
        <th scope="col" class="equal">Epic Games</th>
        <th scope="col" class="equal">GOG</th>
    </tr>
    </thead>
    <tbody>
    @foreach($games as $game)
        <tr>
            <th scope="row">{{ $game->name }}</th>
            <td>{{ $game->steam ? $game->steam[0] : '-' }}</td>
            <td>{{ $game->origin ? '+' : '-' }}</td>
            <td>{{ $game->uplay ? '+' : '-' }}</td>
            <td>{{ $game->epicgames ? '+' : '-' }}</td>
            <td>{{ $game->gog ? '+' : '-' }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
@endsection

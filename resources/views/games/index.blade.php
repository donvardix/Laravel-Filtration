@extends('games.layouts.layout', ['title'=>'Главная'])
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
            <th scope="row"><button type="button" class="btn btn-link" data-toggle="modal" data-target="#info{{ $game->id }}">{{ $game->name }}</button></th>
            <td>
                @if($game->steam)
                    <a href="{{$game->steam}}" target="_blank">link</a>
                @else
                    {{'-'}}
                @endif
            </td>
            <td>
                @if($game->origin)
                    <a href="{{$game->origin}}" target="_blank">link</a>
                @else
                    {{'-'}}
                @endif
            </td>
            <td>
                @if($game->uplay)
                    <a href="{{$game->uplay}}" target="_blank">link</a>
                @else
                    {{'-'}}
                @endif
            </td>
            <td>
                @if($game->epicgames)
                    <a href="{{$game->epicgames}}" target="_blank">link</a>
                @else
                    {{'-'}}
                @endif
            </td>
            <td>
                @if($game->gog)
                    <a href="{{$game->gog}}" target="_blank">link</a>
                @else
                    {{'-'}}
                @endif
            </td>
        </tr>
        <div class="modal fade" id="info{{ $game->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalScrollableTitle">{{ $game->name }}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        @if($game->steam_info)
                            <pre><b>Steam:</b><br />{{ $game->steam_info }}</pre>
                            <hr />
                        @endif
                        @if($game->origin_info)
                            <pre><b>Origin:</b><br />{{ $game->origin_info }}</pre>
                            <hr />
                        @endif
                        @if($game->uplay_info)
                            <pre><b>UPlay:</b><br />{{ $game->uplay_info }}</pre>
                            <hr />
                        @endif
                        @if($game->epicgames_info)
                            <pre><b>Epic Games:</b><br />{{ $game->epicgames_info }}</pre>
                            <hr />
                        @endif
                        @if($game->gog_info)
                            <pre><b>GOG:</b><br />{{ $game->gog_info }}</pre>
                            <hr />
                        @endif
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
    </tbody>
</table>
@endsection

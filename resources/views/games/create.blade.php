@extends('games.layouts.layout')
@section('content')
    <form action="{{ route('games.store') }}" method="post">
        @csrf
        <div class="form-group">
            <label for="inputName">Name</label>
            <input name="name" type="text" class="form-control" id="inputName">
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="inputSteam">Steam</label>
                <input name="steam" type="text" class="form-control" id="inputSteam" placeholder="Ссылка">
            </div>
            <div class="form-group col-md-8">
                <label class="sr-only" for="noteSteam">Note</label>
                <textarea name="noteSteam" class="form-control" id="noteSteam" rows="2" placeholder="Примечание" style="min-height: 70px;"></textarea>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="inputOrigin">Origin</label>
                <input name="origin" type="text" class="form-control" id="inputOrigin" placeholder="Ссылка">
            </div>
            <div class="form-group col-md-8">
                <label class="sr-only" for="noteOrigin">Note</label>
                <textarea name="noteOrigin" class="form-control" id="noteOrigin" rows="2" placeholder="Примечание" style="min-height: 70px;"></textarea>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="inputUPlay">UPlay</label>
                <input name="uPlay" type="text" class="form-control" id="inputUPlay" placeholder="Ссылка">
            </div>
            <div class="form-group col-md-8">
                <label class="sr-only" for="noteUPlay">Note</label>
                <textarea name="noteUPlay" class="form-control" id="noteUPlay" rows="2" placeholder="Примечание" style="min-height: 70px;"></textarea>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="inputEpicGames">Epic Games</label>
                <input name="epicGames" type="text" class="form-control" id="inputEpicGames" placeholder="Ссылка">
            </div>
            <div class="form-group col-md-8">
                <label class="sr-only" for="noteEpicGames">Note</label>
                <textarea name="noteEpicGames" class="form-control" id="noteEpicGames" rows="2" placeholder="Примечание" style="min-height: 70px;"></textarea>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-4">
                <label for="inputGog">GOG</label>
                <input name="gog" type="text" class="form-control" id="inputGog" placeholder="Ссылка">
            </div>
            <div class="form-group col-md-8">
                <label class="sr-only" for="noteGog">Note</label>
                <textarea name="noteGog" class="form-control" id="noteGog" rows="2" placeholder="Примечание" style="min-height: 70px;"></textarea>
            </div>
        </div>
        <button type="submit" class="btn btn-primary mb-2">Добавить</button>
    </form>
@endsection

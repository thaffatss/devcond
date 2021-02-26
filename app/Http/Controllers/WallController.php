<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

// Importação dos Models utilizados.
use App\Models\User;
use App\Models\Wall;
use App\Models\WallLike;

class WallController extends Controller
{
    public function getAll() {
        // Retorna uma lista com avisos ou caso não tenha retorna vazia.
        $array = ['error' => '', 'list' => []]; // Estrutura de retorno

        // Pega usário logado para pegar os avisos do mesmo.
        $user = auth()->user();

        // Pega todos os avisos do mural.
        $walls = Wall::all();

        // Antes de jogar no array os avisos. precisa-se complementar as informações.
        foreach($walls as $wallkey => $wallValue) {
            $walls[$wallKey]['likes'] = 0;
            $walls[$wallKey]['liked'] = false;

            $likes = WallLike::where('id_wall', $wallValue['id'])->count();
            $walls[$wallKey]['likes'] = $likes;

            $meLikes = WallLike::where('id_wall', $wallValue['id'])->where('id_user', $user['id'])->count();

            if($meLikes > 0) {
                $walls[$wallKey]['liked'] = true;
            }
        }

        // Passa todos os avisos para uma lista.
        $array['list'] = $walls;

        return $array;
    }
}

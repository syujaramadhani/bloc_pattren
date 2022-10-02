// ignore_for_file: unused_field

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/bloc/app_events.dart';
import 'package:pokemon/bloc/app_states.dart';
import 'package:pokemon/repo/repositories.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonRepository _pokemonRepository;

  PokemonBloc(this._pokemonRepository) : super(PokemonLoadingState()) {
    on<LoadPokemonEvent>((event, emit) async {
      emit(PokemonLoadingState());
      try {
        final pokemons = await _pokemonRepository.getPokemons();
        emit(PokemonLoadedState(pokemons));
      } catch (e) {
        emit(PokemonErrorState(e.toString()));
      }
    });
  }
}

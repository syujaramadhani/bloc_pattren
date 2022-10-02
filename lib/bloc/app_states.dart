import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokemon/models/pokemon_model.dart';

@immutable
abstract class PokemonState extends Equatable {}

// data loading state
class PokemonLoadingState extends PokemonState {
  @override
  List<Object?> get props => [];
}

//data loaded state
class PokemonLoadedState extends PokemonState {
  PokemonLoadedState(this.pokemons);

  final List<Results> pokemons;

  @override
  List<Object?> get props => [pokemons];
}

//data error loading state

class PokemonErrorState extends PokemonState {
  PokemonErrorState(this.error);

  final String error;

  @override
  List<Object?> get props => [error];
}

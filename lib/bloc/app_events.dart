import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class PokemonEvent extends Equatable {
  const PokemonEvent();
}

// data loading state
class LoadPokemonEvent extends PokemonEvent {
  @override
  List<Object?> get props => [];
}

//data loaded state

//data error state

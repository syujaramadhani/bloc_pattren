import 'dart:convert';

import 'package:http/http.dart';
import 'package:pokemon/models/pokemon_model.dart';

class PokemonRepository {
  String endpoint = 'https://pokeapi.co/api/v2/ability/?limit =20&offset=20';
  Future<List<Results>> getPokemons() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['results'];
      return result.map((e) => Results.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

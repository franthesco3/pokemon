import 'package:dio/dio.dart';
import 'package:pokedex/models/pokemon.dart';

class Repository {
  List<Pokemon> pokemon;
  var dio = Dio();
  Future<List<Pokemon>> getPokemons() async {
    pokemon = new List();
    String url = 'https://pokeapi.co/api/v2/pokemon?limit=20';
    try {
      var res = await dio.get(url);
      Pokemon p;
      for (int i = 0; i < 20; i++) {
        p = null;
        p = Pokemon.fromJson(res.data['results'][i]);
        p.setId(i);
        pokemon.add(p);
        var img = await getImage(i + 1);
        p.set(img);
        print(p.name);
        print(p.image);
      }
    } catch (e) {
      print(e);
    }
    return pokemon;
  }

  Future<String> getImage(int index) async {
    var result;
    try {
      result = await dio.get('https://pokeapi.co/api/v2/pokemon/$index/');
      // print(result.data['sprites']['back_default']);
    } catch (e) {}
    return result.data['sprites']['back_default'];
  }
}

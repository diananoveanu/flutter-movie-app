import 'package:flutter_template/domain/MovieObject.dart';
import 'package:flutter_template/helper.dart';

class MovieRepository {
  final String _apiKey = "6949bf0387762affe0d02e4c678d7a28";

  AppHelper _helper = AppHelper();

  Future<List<Movie>> fetchMovieList() async {
    final response = await _helper.get("movie/popular?api_key=$_apiKey");
    return MovieResponse.fromJson(response).results;
  }
}

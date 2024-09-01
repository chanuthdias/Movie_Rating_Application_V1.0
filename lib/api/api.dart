import 'dart:convert';
import 'package:movie_rating_application/constant.dart';
import 'package:http/http.dart' as http;
import 'package:movie_rating_application/models/movie.dart';

class Api{
  static const _trendingUrl = 'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constant.apiKey}';

  Future<List<Movie>> getTrendingMovies() async{
    final response = await http.get(Uri.parse(_trendingUrl));
    if(response.statusCode == 200){
      final decodedData = jsonDecode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJason(movie)).toList();
    }
    else{
      throw Exception('Error !');
    }
  }
}
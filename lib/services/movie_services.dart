import 'package:moviez_challenge/models/movie_models.dart';

class MovieServices {
  static Future<List<MovieModel>> searchMovie(String query) async {
    await Future.delayed(const Duration(seconds: 2));

    List<MovieModel> results = [];
    for (int i = 0; i < movies.length; i++) {
      if (movies[i].title.toLowerCase().contains(query.toLowerCase())) {
        results.add(movies[i]);
      }
    }
    return results;
  }
}

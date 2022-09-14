import 'package:flutter/cupertino.dart';
import 'package:moviez_challenge/models/movie_models.dart';
import 'package:moviez_challenge/services/movie_services.dart';

class MovieProvider extends ChangeNotifier {
  bool _isLoading = false;

  List<MovieModel> _searchResult = movies;

  bool get isLoading => _isLoading;

  set isLoading(bool newValue) {
    _isLoading = newValue;
    notifyListeners();
  }

  List<MovieModel> get searchResult => _searchResult;
  set searchResult(List<MovieModel> newValue) {
    _searchResult = newValue;
    notifyListeners();
  }

  void searchMovie(String query) async {
    isLoading = true;
    List<MovieModel> result = await MovieServices.searchMovie(query);

    isLoading = false;
    searchResult = result;
  }
}

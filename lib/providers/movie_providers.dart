import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/movie_Constants.dart';
import 'package:flutter_application_1/models/movie_models.dart';
import 'package:http/http.dart' as http;

class MovieProviders extends ChangeNotifier {
  List<MovieModel> _movies = MOVIES_CONSTANT;
  List<MovieModel> get movies => _movies;
  List<MovieModel> get trending => _movies.sublist(0, 4);
  List<String> _categories = CATEGORIES;
  List<String> get category => _categories;
  List<MovieModel> getMoviesByCategory(String category) {
    return _movies.where((el) => el.genres.contains(category)).toList();
  }

  Future<void> loadMovies() async {
    final res =
        await http.get(Uri.parse('https://yts.mx/api/v2/list_movies.json'));
    print(jsonDecode(res.body)['data']['movies']);
    List<MovieModel> tempMovies = [];
    for (final movie in jsonDecode(res.body)['data']['movies']) {
      tempMovies.add(MovieModel.fromJson(movie));
    }
    _movies = tempMovies;
    notifyListeners();
  }
}

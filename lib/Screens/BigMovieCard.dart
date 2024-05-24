import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/movie_models.dart';

class Bigmoviecard extends StatelessWidget {
  MovieModel movie;
  Bigmoviecard(this.movie);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              image: NetworkImage(movie.img), fit: BoxFit.cover)),
      margin: EdgeInsets.all(8),
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.all(8),
      ),
    );
  }
}

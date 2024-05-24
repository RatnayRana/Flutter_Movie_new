import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/BigMovieCard.dart';
import 'package:flutter_application_1/providers/movie_providers.dart';
import 'package:provider/provider.dart';

class Trendingmovies extends StatelessWidget {
  const Trendingmovies({super.key});

  @override
  Widget build(BuildContext context) {
    final trending = Provider.of<MovieProviders>(context).trending;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            "Trending",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Schyler'),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: trending.map((el) => Bigmoviecard(el)).toList(),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/HelpingComponents/TrendingMovies.dart';
import 'package:flutter_application_1/providers/movie_providers.dart';
import 'package:flutter_application_1/widgets/CategoryList.dart';
import 'package:provider/provider.dart';

class Moviehomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [Trendingmovies(), Categorylist()],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/movie_models.dart';
import 'package:flutter_application_1/providers/movie_providers.dart';
import 'package:provider/provider.dart';

class Moviesbycategory extends StatefulWidget {
  final String category;
  const Moviesbycategory({super.key, required this.category});

  @override
  State<Moviesbycategory> createState() => _MoviesbycategoryState();
}

class _MoviesbycategoryState extends State<Moviesbycategory> {
  @override
  Widget build(BuildContext context) {
    List<MovieModel> movieList =
        Provider.of<MovieProviders>(context, listen: false)
            .getMoviesByCategory(widget.category);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
      ),
      body: Container(
          child: movieList.length == 0
              ? Center(
                  child: Text("No mOVIES LA "),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: movieList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(movieList[index].title),
                        subtitle: Text(
                          movieList[index].toString(),
                        ),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            movieList[index].img,
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        trailing: Text(
                          movieList[index].rating.toString(),
                          style: TextStyle(fontSize: 24),
                        ));
                  },
                )),
    );
  }
}

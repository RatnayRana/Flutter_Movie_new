import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/MoviesByCategory.dart';
import 'package:flutter_application_1/providers/movie_providers.dart';
import 'package:provider/provider.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<MovieProviders>(context).category;
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Wrap(
              children: categories
                  .map((val) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Moviesbycategory(category: val)));
                        },
                        child: (Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          margin: EdgeInsets.only(right: 4, bottom: 4, top: 10),
                          child: Text(val),
                        )),
                      ))
                  .toList())
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/MovieHomePage.dart';
import 'package:flutter_application_1/Screens/MovieSetting.dart';
import 'package:flutter_application_1/Screens/MovieTrending.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _selectIndex = 0;
  List<Widget> screens = [Moviehomepage(), Moviesetting(), Movietrending()];
  List<String> Title = ["HomePage", "Setting", "Trending"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Title[_selectIndex])),
      body: SingleChildScrollView(
        child: screens[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: (value) => setState(() {
          _selectIndex = value;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
          BottomNavigationBarItem(
              icon: Icon(Icons.trending_flat), label: "Trending"),
        ],
      ),
    );
  }
}

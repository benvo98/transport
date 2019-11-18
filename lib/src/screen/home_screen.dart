import 'package:flutter/material.dart';
import 'package:transport/model/container.dart';
import 'package:transport/model/movie_model.dart';
import 'package:transport/src/widgets/contain_item.dart';

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenPage> {
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Image.asset('LKT.png'),
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 30.0),
          onPressed: () => print('Menu'),
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 30.0),
            onPressed: () => print('Search'),
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          /*Container(
            height: 280,
            width: double.infinity,
            child: PageView.builder(
              itemCount: ctns.length,
              itemBuilder: (ctn, i) {
                return ItemSlide();
              },
            ),
          )*/
        ],
      ),
    );
  }
}

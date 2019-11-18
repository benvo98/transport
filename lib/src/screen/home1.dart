import 'dart:async';

import 'package:flutter/material.dart';
import 'package:transport/model/container.dart';
import 'package:transport/model/district.dart';
import 'package:transport/model/slide.dart';
import 'package:transport/src/widgets/contain_item.dart';
import 'package:transport/src/widgets/itemlocationselect.dart';
import 'package:transport/src/widgets/slide_dots.dart';
import 'package:transport/src/widgets/slide_item.dart';
import 'package:transport/src/widgets/widget_item.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPagechanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            'Transport',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 30.0),
          onPressed: () => print('Menu'),
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 30.0),
            onPressed: () => print('Search'),
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: Colors.black.withOpacity(.05),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellowAccent[700],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      alignment: Alignment.center,
                      child: Text(
                        'Khuyến mãi hot :',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 280.0,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: cntsseen.length,
                    onPageChanged: _onPagechanged,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemSlide(
                          imageUrl: cntsseen[index].imageUrl,
                          title: cntsseen[index].title);
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int index = 0; index < slideList.length; index++)
                        if (index == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        alignment: Alignment.center,
                        color: Colors.deepPurple,
                        child: Text(
                          'District',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          height: 10,
                          color: Colors.black.withOpacity(.35),
                          thickness: 0.7,
                        ),
                      ),
                      Wrap(
                        children: List.generate(districts.length, (index) {
                          return Container(
                              height: 200.0,
                              width: 200,
                              child: Widgetit1(
                                imageUrl: districts[index].imageUrl,
                                title: districts[index].title,
                                description: districts[index].description,
                              ));
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

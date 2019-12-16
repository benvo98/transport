import 'package:flutter/material.dart';
import 'package:transport/src/map/home.dart';
import 'package:transport/src/screen/home1.dart';
import 'package:transport/src/screen/itemif.dart';
import 'package:transport/src/screen/menu.dart';
import 'package:transport/src/screen/trans.dart';

class Itembottom extends StatefulWidget {
  @override
  _ItembottomState createState() => _ItembottomState();
}

class _ItembottomState extends State<Itembottom> {
  int _index = 0;

  List<Widget> listScreen = [
    Home1(),
    Trans(),
    MyHomePage(),
    ItemIF(),
    MenuPF()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[_index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _index == 0 ? Colors.red : Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.transfer_within_a_station,
              color: _index == 1 ? Colors.red : Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: _index == 2 ? Colors.red : Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: _index == 3 ? Colors.red : Colors.grey,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: _index == 4 ? Colors.red : Colors.grey,
            ),
            title: Text(""),
          ),
        ],
      ),
    );
  }
}

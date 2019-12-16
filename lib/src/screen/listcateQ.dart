import 'package:flutter/material.dart';
import 'package:transport/model/listsp.dart';
import 'package:transport/src/widgets/item3.dart';

class DisctrictScreen extends StatelessWidget {
  final List<Listsp> listsp;
  DisctrictScreen({this.listsp});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(.8),
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text(
            'Transport',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
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
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.topCenter,
            child: Text(
              'Danh Sách Xe Cho Thuê',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.red.withOpacity(.8)),
            ),
          ),
          Wrap(
            children: List.generate(listsp.length, (index) {
              return Container(
                height: 180,
                width: double.infinity,
                child: ItemListSP(
                  imageUrl: listsp[index].imageUrl,
                  title: listsp[index].title,
                  categories: listsp[index].categories,
                  text: listsp[index].text,
                  rating: listsp[index].rating,
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:transport/model/listsp.dart';
import 'package:transport/src/widgets/item3.dart';

class Trans extends StatelessWidget {
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
        leading: IconButton(
          padding: EdgeInsets.only(left: 30.0),
          onPressed: () => print('Filter'),
          icon: Icon(Icons.filter_list),
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
      body: SingleChildScrollView(
        child: Column(
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
              children: List.generate(listsps.length, (index) {
                return Container(
                  height: 180,
                  width: double.infinity,
                  child: ItemListSP(
                    imageUrl: listsps[index].imageUrl,
                    title: listsps[index].title,
                    categories: listsps[index].categories,
                    text: listsps[index].text,
                    rating: listsps[index].rating,
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

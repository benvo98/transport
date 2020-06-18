import 'package:flutter/material.dart';
import 'package:transport/model/detailspmodel.dart';
import 'package:transport/src/screen/infortrans.dart';

class ItemListSP extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String categories;
  final String text;
  final String rating;
  ItemListSP(
      {this.imageUrl, this.title, this.categories, this.text, this.rating});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 0.4),
                blurRadius: 10.0,
              )
            ]),
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image(
                      image: AssetImage(imageUrl),
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: 220,
                    child: Column(
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 00),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    categories,
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ],
                              ),
                              Stack(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[700],
                                      ),
                                      Text(
                                        text,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                      Text(rating),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 125),
                                    width: 100,
                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailScreen()));
                                      },
                                      color: Colors.red,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25.0)),
                                      child: Text(
                                        "More Details",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

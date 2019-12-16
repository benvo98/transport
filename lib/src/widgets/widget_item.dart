import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgetit1 extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final Function onTap;
  Widgetit1({this.imageUrl, this.title, this.description, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkWell(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.all(10),
            width: 190,
            height: 190,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                )),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black12.withOpacity(0.25)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            title.toUpperCase(),
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: <Widget>[
                          Text(
                            description.toLowerCase(),
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

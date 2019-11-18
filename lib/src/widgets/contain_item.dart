import 'package:flutter/material.dart';
import 'package:transport/model/container.dart';

class ItemSlide extends StatelessWidget {
  String imageUrl;
  String title;
  String categories;
  String country;
  ItemSlide({this.imageUrl, this.title, this.country, this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 350,
              height: 240,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 0.4),
                        blurRadius: 10.0)
                  ]),
              child: Center(
                child: Hero(
                    tag: imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(imageUrl),
                        height: 230.0,
                        width: 340,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
          ),
          Positioned(
              left: 35.9,
              bottom: 25.0,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.black.withOpacity(0.750),
                ),
                width: 340,
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

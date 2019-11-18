import 'package:flutter/material.dart';
import 'package:transport/model/slide.dart';

class SlideItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  SlideItem({
    this.imageUrl,
    this.title,
    this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              )),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 22, color: Colors.black12),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

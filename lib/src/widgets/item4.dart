import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  @override
  final String iconmenu;
  final String text;
  ItemMenu({this.iconmenu, this.text});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        height: 35,
        child: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 300,
                  color: Colors.lightBlueAccent,
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                ),
                Text(' Notification'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.navigate_next,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

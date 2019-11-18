import 'package:flutter/material.dart';
import 'package:transport/src/widgets/item5.dart';

class MenuPF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                color: Colors.redAccent.withOpacity(.8),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 160,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0)),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage('love.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 10),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Vợ Tui ♥',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                Container(
                                  height: 20,
                                  child: RaisedButton(
                                    onPressed: _onclicked,
                                    color: Colors.yellowAccent[700],
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Text(
                                      'Vip Member',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 50, bottom: 10),
                            child: Icon(
                              Icons.navigate_next,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Notification'),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.yellow,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Gift Card'),
                leading: Icon(
                  Icons.card_giftcard,
                  color: Colors.orange,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('History'),
                leading: Icon(
                  Icons.receipt,
                  color: Colors.green,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onclicked() {}
}

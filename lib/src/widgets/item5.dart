import 'package:flutter/material.dart';

class ItemPFUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Container(
            width: 50,
            height: 20,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Card(
              margin: EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  Container(
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
                                    fontWeight: FontWeight.bold, fontSize: 20),
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
                          padding: const EdgeInsets.only(left: 50, bottom: 10),
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  void _onclicked() {}
}

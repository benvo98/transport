import 'package:flutter/material.dart';

class ItemIF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              'View Profile',
              style: TextStyle(color: Colors.black, fontSize: 15),
            )),
        leading: IconButton(
          padding: EdgeInsets.only(left: 30.0),
          onPressed: () => print('Arrow_Back'),
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 30.0),
            onPressed: () => print('Favorite_border'),
            icon: Icon(Icons.favorite_border),
            iconSize: 30.0,
            color: Colors.red,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Card(
                elevation: 10,
                margin: EdgeInsets.only(top: 100, left: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white10,
                            offset: Offset(0.0, 0.4),
                            blurRadius: 10.0)
                      ]),
                  height: 380,
                  width: 380,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 120, left: 20, right: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'First Name',
                                style: TextStyle(
                                    color: Colors.black12, fontSize: 15),
                              ),
                              Text('Anh')
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black.withOpacity(.35),
                          thickness: 0.7,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Last Name',
                                style: TextStyle(
                                    color: Colors.black12, fontSize: 15),
                              ),
                              Text('Vo')
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black.withOpacity(.35),
                          thickness: 0.7,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.black12, fontSize: 15),
                              ),
                              Text('anhvo@email.com  ')
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black.withOpacity(.35),
                          thickness: 0.7,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Password',
                                style: TextStyle(
                                    color: Colors.black12, fontSize: 15),
                              ),
                              Text('*******')
                            ],
                          ),
                        ),
                        Divider(
                          height: 10,
                          color: Colors.black.withOpacity(.35),
                          thickness: 0.7,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Moblie',
                                style: TextStyle(
                                    color: Colors.black12, fontSize: 15),
                              ),
                              Text('0912345678')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage('tui.jpg'), fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

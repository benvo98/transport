import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:transport/src/resource/login_page1.dart';

class HomeLogin extends StatefulWidget {
  @override
  _HomeLoginState createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.yellow, Colors.red])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  ' DAILY LIFE \n AND TRANSPORT\n TO \n YOUR HOME',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    ' Order a transportation vehicle \n to move things right away',
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 250, 0, 10),
              child: SizedBox(
                width: 380,
                height: 45,
                child: RaisedButton(
                    onPressed: onClicked,
                    color: Colors.white.withOpacity(.7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.red.withOpacity(.7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: SizedBox(
                width: 380,
                height: 45,
                child: FlatButton(
                  onPressed: onClicked1,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(width: 50, child: Image.asset('icfb.png')),
                      Text(
                        "Connect with facebook",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: SizedBox(
                width: 380,
                height: 45,
                child: FlatButton(
                  onPressed: onClicked1,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 35,
                        child: Image.asset('ggg.png'),
                      ),
                      Text(
                        "  Connect with Google",
                        style: TextStyle(
                            color: Colors.red[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage1()));
  }

  void onClicked1() {}
}

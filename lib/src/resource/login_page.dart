import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:transport/model/slide.dart';
import 'package:transport/src/screen/home1.dart';
import 'package:transport/src/screen/itemif.dart';
import 'package:transport/src/widgets/bottomnavi.dart';
import 'package:transport/src/widgets/slide_dots.dart';
import 'package:transport/src/widgets/slide_item.dart';
import 'package:transport/src/resource/register_page.dart';
import 'package:transport/src/screen/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPass = false;
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPagechanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _pageController,
                      onPageChanged: _onPagechanged,
                      itemCount: slideList.length,
                      itemBuilder: (context, i) => SlideItem(
                        imageUrl: slideList[i].imageUrl,
                        title: slideList[i].title,
                        description: slideList[i].description,
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideList.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Login to your account.',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                child: TextFormField(
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    prefixIcon:
                        Container(width: 50, child: Image.asset("ic_user.png")),
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(),
                    ),
                    //TextStyle(color: Color(0Xff888888), fontSize: 15,fontWeight: FontWeight.bold,)),
                  ),
                  /*validator: (val) {
                    if (val.length == 0) {
                      return "Username cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,*/
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 40),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    SizedBox(
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        obscureText: !_showPass,
                        decoration: InputDecoration(
                          prefixIcon: Container(
                              width: 50, child: Image.asset("ic_lock.png")),
                          labelText: "Password",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: onToggle,
                        child: const Icon(
                          Icons.remove_red_eye,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SizedBox(
                  width: 380,
                  height: 45,
                  child: RaisedButton(
                      onPressed: onClicked,
                      color: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 180,
                        height: 40,
                        child: RaisedButton(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            onPressed: onClicked,
                            child: Text(
                              "FACEBOOK",
                              style: TextStyle(color: Colors.indigo),
                            )),
                      ),
                      SizedBox(
                        width: 180,
                        height: 40,
                        child: RaisedButton(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            onPressed: onClicked,
                            child: Text(
                              "GOOGLE",
                              style: TextStyle(color: Colors.red[600]),
                            )),
                      ),
                    ],
                  ),
                ),
              ),*/
              Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: Container(
                    height: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60, 0, 0, 30),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.deepPurple),
                              ),
                            ],
                          ),
                        ),
                        Row(children: <Widget>[
                          Text(
                            "You Don't have an account? ",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff888888)),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => RegisterPage()));
                              },
                              child: Text("Sign up",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blueAccent[700])))
                        ]),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void onToggle() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onClicked() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Itembottom()));
  }
}

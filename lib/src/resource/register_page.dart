import 'package:flutter/material.dart';
import 'package:transport/src/blocs/auth_bloc.dart';
import 'package:transport/src/dialog/loading_dialog.dart';
import 'package:transport/src/dialog/msg_dialog.dart';

import 'package:transport/src/resource/login_page1.dart';
import 'package:transport/src/screen/home1.dart';
import 'package:transport/src/widgets/bottomnavi.dart';
import 'package:transport/src/screen/home_screen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AuthBloc authBloc = new AuthBloc();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  bool _showPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.yellow, Colors.red]),
            ),
            constraints: BoxConstraints.expand(),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 150, 0, 30),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: StreamBuilder(
                        stream: authBloc.nameStream,
                        builder: (context, snapshot) => TextFormField(
                          controller: _nameController,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            errorText:
                                snapshot.hasError ? snapshot.error : null,
                            prefixIcon: Container(
                                width: 50, child: Image.asset("ic_user.png")),
                            labelText: "Full Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            //TextStyle(color: Color(0Xff888888), fontSize: 15,fontWeight: FontWeight.bold,)),
                          ),
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                      child: StreamBuilder(
                        stream: authBloc.emailStream,
                        builder: (context, snapshot) => TextFormField(
                          controller: _emailController,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            errorText:
                                snapshot.hasError ? snapshot.error : null,
                            prefixIcon: Container(
                                width: 50, child: Image.asset("ic_mail.png")),
                            labelText: "Email - Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            //TextStyle(color: Color(0Xff888888), fontSize: 15,fontWeight: FontWeight.bold,)),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        SizedBox(
                            child: StreamBuilder(
                          stream: authBloc.passStream,
                          builder: (context, snapshot) => TextFormField(
                            controller: _passController,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            obscureText: !_showPass,
                            decoration: InputDecoration(
                              errorText:
                                  snapshot.hasError ? snapshot.error : null,
                              prefixIcon: Container(
                                  width: 50, child: Image.asset("ic_lock.png")),
                              labelText: "Password",
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                        )),
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
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
                      child: StreamBuilder(
                        stream: authBloc.phoneStream,
                        builder: (context, snapshot) => TextFormField(
                          controller: _phoneController,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                            errorText:
                                snapshot.hasError ? snapshot.error : null,
                            prefixIcon: Container(
                                width: 50, child: Image.asset("ic_phone.png")),
                            labelText: "Phone Numbers",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            //TextStyle(color: Color(0Xff888888), fontSize: 15,fontWeight: FontWeight.bold,)),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 380,
                    height: 50,
                    child: RaisedButton(
                      onPressed: _onSignUpClicked,
                      color: Colors.red.withOpacity(.7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Text(
                        "Create an Acount",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )));
  }

  void onToggle() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  _onSignUpClicked() {
    var isValid = authBloc.isValid(_nameController.text, _emailController.text,
        _passController.text, _phoneController.text);
    if (isValid) {
      LoadingDialog.showLoadingDialog(context, "Loading...");
      authBloc.signUp(_emailController.text, _passController.text,
          _phoneController.text, _nameController.text, () {
        LoadingDialog.hideLoadingDialog(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage1()));
      }, (msg) {
        LoadingDialog.hideLoadingDialog(context);
        MsgDialog.showMsgDialog(context, "Sign -In", msg);
      });
    }
  }
}

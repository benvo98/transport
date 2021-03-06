import 'package:flutter/material.dart';
import 'package:transport/src/app.dart';
import 'package:transport/src/blocs/auth_bloc.dart';
import 'package:transport/src/resource/home_page.dart';
import 'package:transport/src/screen/home1.dart';

void main() {
  runApp(MyApp(
      new AuthBloc(),
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeLogin(),
      )));
}

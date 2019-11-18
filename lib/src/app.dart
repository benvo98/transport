import 'dart:io';
import 'package:transport/src/resource/home_page.dart';

import 'package:transport/src/screen/home1.dart';

import 'package:transport/src/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:transport/src/resource/login_page.dart';
import 'package:transport/src/resource/register_page.dart';
import 'package:transport/src/screen/itemif.dart';
import 'package:transport/src/widgets/bottomnavi.dart';
import 'package:transport/src/widgets/contain_item.dart';
import 'package:transport/src/widgets/item3.dart';
import 'package:transport/src/widgets/item4.dart';
import 'package:transport/src/widgets/item5.dart';

import 'package:transport/src/widgets/widget_item.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLogin(),
    );
  }
}

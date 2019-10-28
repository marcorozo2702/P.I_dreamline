import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/LoginScreen.dart';

void main() async{
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(MaterialApp(
    home: LoginScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
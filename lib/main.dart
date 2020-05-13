import 'package:flutter/material.dart';
import 'package:xylophoneapp/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone App',
      home: Home(),
    );
  }
}

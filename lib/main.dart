import 'package:flutter/material.dart';
import 'package:master_card_ui/home_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MasterCard UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeCard(),
    );
  }
}

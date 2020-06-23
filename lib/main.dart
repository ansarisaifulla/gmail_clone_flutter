import 'package:flutter/material.dart';
import 'HomePage.dart';

void main()=>runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: myHome(),
    );
  }
}
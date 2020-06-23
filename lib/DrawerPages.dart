import 'package:flutter/material.dart';

class drawerPage extends StatelessWidget {

  String title;
drawerPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        child: Center(
          child: Text("This is $title page"),
        ),
      ),
    );
  }
}

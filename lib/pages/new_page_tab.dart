import 'package:flutter/material.dart';
class NewPageTap extends StatelessWidget {
  final String title;
  NewPageTap(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      // ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
import 'package:flutter/material.dart';
class NewPageThree extends StatelessWidget {
  final String title;
  NewPageThree(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
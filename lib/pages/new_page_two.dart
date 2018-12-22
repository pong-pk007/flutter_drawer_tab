import 'package:flutter/material.dart';
class NewPageTwo extends StatelessWidget {
  final String title;
  NewPageTwo(this.title);

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
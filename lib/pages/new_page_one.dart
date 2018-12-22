import 'package:flutter/material.dart';
class NewPageOne extends StatelessWidget {
  final String title;
  NewPageOne(this.title);

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
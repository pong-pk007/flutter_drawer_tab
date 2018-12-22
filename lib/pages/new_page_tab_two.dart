import 'package:flutter/material.dart';

class NewPageTapTwo extends StatelessWidget {
  final String title;
  NewPageTapTwo(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(title),
        // ),
        body: new MyBody());
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
    content: Text(
      "Dialog is show"
      ,style: TextStyle(fontSize: 30.0),
    ),
    title: Text("Title"),
    
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text(
                  "Click",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.redAccent,
                onPressed: () => showDialog(context: context, child: dialog),
              ),
              // Padding(
              //   padding: EdgeInsets.all(10.0),
              // ),
              // RaisedButton(
              //   child: Text(
              //     "Click",
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   color: Colors.blueAccent,
              //   onPressed: () => Scaffold.of(context).showSnackBar(SnackBar(
              //         content: Text("You clicked me."),
              //         duration: Duration(seconds: 3),
              //       )),
              // ),
            ],
          ),
        ],
      )),
    );
  }
}

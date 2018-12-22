import 'package:flutter/material.dart';

class NewPageTapOne extends StatelessWidget {
  final String title;
  NewPageTapOne(this.title);

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
                color: Colors.blueAccent,
                onPressed: () => Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("You clicked me."),
                      duration: Duration(seconds: 3),
                    )),
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

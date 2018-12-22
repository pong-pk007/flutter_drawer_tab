import 'package:flutter/material.dart';

class NewPageTapThree extends StatelessWidget {
  final String title;
  NewPageTapThree(this.title);

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

  int current_step = 0;
  List<Step> my_step = [
    Step(
      title: Text("Step 1"),
      subtitle: Text("descrip 1"),
      content: Text("Some content 1"),
      isActive: true
    ),
    Step(
      title: Text("Step 2"),
      subtitle: Text("descrip 2"),
      content: Text("Some content 2"),
      isActive: false
    ),
    Step(
      title: Text("Step 3"),
      subtitle: Text("descrip 3"),
      content: Text("Some content 3"),
      isActive: false
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Stepper(
        steps: my_step,
        currentStep: this.current_step,
        type: StepperType.vertical,
        onStepContinue: ()=> this.current_step + 1,
      )
    );
  }
}

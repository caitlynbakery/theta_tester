import 'package:flutter/material.dart';
import 'package:caitlyn_tester/commands/orientation_apply.dart';
import 'package:caitlyn_tester/commands/orientation_disapply.dart';
import 'package:caitlyn_tester/commands/orientation_applyAuto.dart';
import 'package:caitlyn_tester/commands/orientation_applySave.dart';
import 'package:caitlyn_tester/commands/orientation_applyLoad.dart';

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orientation'),
      ),
      body: Column(

        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(buttonTitle: "Apply", buttonFunction: orientationApply,),
              Button(buttonTitle: "ApplyAuto", buttonFunction: orientationApplyAuto,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(buttonTitle: "ApplySave", buttonFunction: orientationApplySave,),
              Button(buttonTitle: "ApplyLoad", buttonFunction: orientationApplyLoad,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(buttonTitle: "Disapply", buttonFunction: orientationDisapply,),

            ],
          )
        ],
      )
    );
  }
}

class Button extends StatelessWidget {
  String buttonTitle;
  Function buttonFunction;
  Button({this.buttonTitle, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text(buttonTitle),
        onPressed: (){
          buttonFunction();
        }
    );
  }
}

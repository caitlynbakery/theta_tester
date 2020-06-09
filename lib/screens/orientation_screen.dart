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
      appBar: AppBar(title: Text('Orientation', style: TextStyle(color: Color(0xff424874),),

      ),
          backgroundColor: Color(0xffa6b1e1),
      ),
      body: Column(

        children: <Widget>[
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "Apply", buttonFunction: orientationApply,),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "ApplyAuto", buttonFunction: orientationApplyAuto,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "ApplySave", buttonFunction: orientationApplySave,),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "ApplyLoad", buttonFunction: orientationApplyLoad,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "Disapply", buttonFunction: orientationDisapply,),
              ),

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
        child: Text(buttonTitle, style: TextStyle(color: Color(0xff424874), fontSize: 18.0),),
        onPressed: (){
          buttonFunction();
        },
      color: Color(0xffdcd6f7),
      elevation: 3.0,
    );
  }
}

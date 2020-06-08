import 'package:flutter/material.dart';
import 'package:caitlyn_tester/commands/stitching_none.dart';
import 'package:caitlyn_tester/commands/stitching_auto.dart';
import 'package:caitlyn_tester/commands/stitching_static.dart';
import 'package:caitlyn_tester/commands/stitching_dynamicAuto.dart';
import 'package:caitlyn_tester/commands/stitching_dynamicSave.dart';
import 'package:caitlyn_tester/commands/stitching_dynamicLoad.dart';

class StitchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stitching'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(buttonTitle: "Auto", buttonFunction: stitchingAuto,),
              Button(buttonTitle: "Static", buttonFunction: stitchingStatic,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(buttonTitle: "dynamicAuto", buttonFunction: stitchingDynamicAuto,),
              Button(buttonTitle: "dynamicSave", buttonFunction: stitchingDynamicSave,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(buttonTitle: "dynamicLoad", buttonFunction: stitchingDynamicLoad,),
              Button(buttonTitle: "none", buttonFunction: stitchingNone,),
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
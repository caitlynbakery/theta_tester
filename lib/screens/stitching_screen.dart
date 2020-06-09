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
        title: Text('Stitching', style: TextStyle(color: Color(0xff424874)),),
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
                child: Button(buttonTitle: "Auto", buttonFunction: stitchingAuto,),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "Static", buttonFunction: stitchingStatic,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "dynamicAuto", buttonFunction: stitchingDynamicAuto,),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "dynamicSave", buttonFunction: stitchingDynamicSave,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "dynamicLoad", buttonFunction: stitchingDynamicLoad,),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Button(buttonTitle: "none", buttonFunction: stitchingNone,),
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

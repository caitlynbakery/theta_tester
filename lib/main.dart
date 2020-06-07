import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'commands/take_pic.dart';
import 'commands/reset.dart';
import 'commands/timer.dart';
import 'commands/timer_off.dart';
import 'commands/sleepOff.dart';
import 'commands/sleep.dart';
import 'components/camera_tool.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff424874),
          title: Text("Theta Z1 Tester"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              MaterialButton(
                onPressed: (){
                  takePicture();
                },
                padding: EdgeInsets.all(25.0),
                shape: CircleBorder(),
                color: Color(0xffa6b1e1),
                child: Icon(Icons.camera_alt, color: Colors.white, size: 35,),

              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  CameraTool(cameraFunction: timerOff, cameraPadding: EdgeInsets.all(15.0), cameraWidget: Icon(Icons.timer_off, color: Colors.white, size: 25,),),
                  CameraTool(cameraFunction: timerThree, cameraPadding: EdgeInsets.all(15.0), cameraWidget: Icon(Icons.timer_3, color: Colors.white, size: 25,),),
                 CameraTool(cameraFunction: sleepOff, cameraPadding: EdgeInsets.all(20.0), cameraWidget: Text('Awake', style: TextStyle(color: Colors.white, fontSize: 15),),),
                  CameraTool(cameraFunction: sleep, cameraPadding: EdgeInsets.all(20.0), cameraWidget: Text('Sleep', style: TextStyle(color: Colors.white, fontSize: 15),),),

                ],
              ),


              SizedBox(
                height: 100,
              ),
              Text(
                "Danger! Button will reset all existing settings"
              ),
              FlatButton(
                onPressed: (){
                   reset();
                },
                color: Color(0xff424874),
                child: Text("RESET", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






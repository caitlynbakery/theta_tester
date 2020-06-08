import 'package:caitlyn_tester/screens/stitching_screen.dart';
import 'package:flutter/material.dart';
import 'package:caitlyn_tester/commands/reset.dart';
import 'package:caitlyn_tester/commands/sleep.dart';
import 'package:caitlyn_tester/commands/sleepOff.dart';
import 'package:caitlyn_tester/commands/take_pic.dart';
import 'package:caitlyn_tester/commands/timer.dart';
import 'package:caitlyn_tester/commands/timer_off.dart';
import 'package:caitlyn_tester/components/camera_tool.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff424874),
        title: Text("Theta Z1 Tester"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 60,
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
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  CameraTool(cameraFunction: timerOff, cameraPadding: EdgeInsets.all(15.0), cameraWidget: Icon(Icons.timer_off, color: Colors.white, size: 25,),),
                  CameraTool(cameraFunction: timerThree, cameraPadding: EdgeInsets.all(15.0), cameraWidget: Icon(Icons.timer_3, color: Colors.white, size: 25,),),


                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),              Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CameraTool(cameraFunction: sleepOff, cameraPadding: EdgeInsets.all(20.0), cameraWidget: Text('Awake', style: TextStyle(color: Colors.white, fontSize: 15),),),
                CameraTool(cameraFunction: sleep, cameraPadding: EdgeInsets.all(20.0), cameraWidget: Text('Sleep', style: TextStyle(color: Colors.white, fontSize: 15),),),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/stitching");
                  },
                  child: Text("STITCHING"),
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, "/orientation");
                  },
                  child: Text("ORIENTATION"),
                ),
              ],
            ),

            SizedBox(
              height: 40,
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
    );
  }
}
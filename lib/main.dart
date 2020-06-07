import 'package:flutter/material.dart';
import 'commands/take_pic.dart';
import 'commands/reset.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    onPressed: (){
                      takePicture();
                    },
                    padding: EdgeInsets.all(20.0),
                    shape: CircleBorder(),
                      color: Color(0xffa6b1e1),
                    child: Icon(Icons.camera_alt, color: Colors.white, size: 30,),

                  ),
                  MaterialButton(
                    onPressed: (){
                    },
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                    color: Color(0xffa6b1e1),
                    child: Icon(Icons.timer, color: Colors.white, size: 25,),
                  ),
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



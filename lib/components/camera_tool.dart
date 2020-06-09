import 'package:flutter/material.dart';

class CameraTool extends StatelessWidget {
  Function cameraFunction;
  Widget cameraWidget;
  EdgeInsets cameraPadding;

  CameraTool({this.cameraFunction, this.cameraWidget, this.cameraPadding});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {
        cameraFunction();
      },
      padding: cameraPadding,
      shape: CircleBorder(),
      borderSide: BorderSide(
        color: Color(0xffa6b1e1),
        style: BorderStyle.solid,
        width: 2.0,
      ),
      highlightElevation: 1.0,
      highlightedBorderColor: Color(0xffdcd6f7),
      splashColor: Color(0xfff4eeff),
      child: cameraWidget,
    );
  }
}
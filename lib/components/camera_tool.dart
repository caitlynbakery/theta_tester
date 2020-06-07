import 'package:flutter/material.dart';

class CameraTool extends StatelessWidget {
  Function cameraFunction;
  Widget cameraWidget;
  EdgeInsets cameraPadding;

  CameraTool({this.cameraFunction, this.cameraWidget, this.cameraPadding});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        cameraFunction();
      },
      padding: cameraPadding,
      shape: CircleBorder(),
      color: Color(0xffa6b1e1),
      child: cameraWidget,
    );
  }
}
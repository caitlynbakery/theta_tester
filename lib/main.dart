import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'screens/tools_screen.dart';
import 'screens/stitching_screen.dart';
import 'screens/orientation_screen.dart';
import 'screens/image_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "/": (context) => ToolsScreen(),
        "/stitching": (context) => StitchingScreen(),
        "/orientation": (context) => OrientationScreen(),
        "/imageview": (context) => ImageViewScreen(),
      },
      initialRoute: "/",
    );
  }
}








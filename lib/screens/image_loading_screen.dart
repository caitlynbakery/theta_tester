
//import 'package:flutter/material.dart';
//import 'package:caitlyn_tester/screens/image_view.dart';
//import 'package:caitlyn_tester/commands/last_file_url.dart';
//
//class LoadingScreen extends StatefulWidget {
//  @override
//  _LoadingScreenState createState() => _LoadingScreenState();
//}
//
//class _LoadingScreenState extends State<LoadingScreen> {
//  @override
//  void initState(){
//    super.initState();
//    getPicture();
//  }
//
//  String url = "https://i.picsum.photos/id/251/500/250.jpg";
//
//  void getPicture() async {
//    String tempUrl = await getLastImageUrl();
//
//    setState(() {
//      url = tempUrl;
//    });
//
////    url = tempUrl;
//
//    Navigator.push(context, MaterialPageRoute(builder: (context) {
//      return ImageViewScreen(
//        imageURL: url,
//      );
//    }));
//  }
//
//
//  Widget build(BuildContext context) {
//    return Container(
//      child: Text("LOADING SCREEN", style: TextStyle(color: Colors.white),),
//    );
//  }
//}

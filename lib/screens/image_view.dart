import 'package:flutter/material.dart';
import 'package:caitlyn_tester/commands/last_file_url.dart';

class ImageViewScreen extends StatefulWidget {
  @override
  _ImageViewScreenState createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {
  String url = "https://i.picsum.photos/id/251/500/250.jpg";

  void getPicture() async {
     String tempUrl = await getLastImageUrl();

     setState(() {
       url = tempUrl;
     });
  }

  @override
  Widget build(BuildContext context) {
    getPicture();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View Image",
          style: TextStyle(
            color: Color(0xff424874)
          ),
        ),
        backgroundColor: Color(0xffa6b1e1),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
//          Image.network("https://i.picsum.photos/id/251/500/250.jpg"),
        Text("Image loading may take a moment"),
        Image.network(url),
        ],
      ),
    );
  }
}

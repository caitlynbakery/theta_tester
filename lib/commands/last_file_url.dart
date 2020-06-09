import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> getLastImageUrl() async {
  var url = 'http://192.168.1.1/osc/commands/execute';

  Map data = {
    'name': 'camera.listFiles',
    'parameters': {
      'fileType': 'image',
      'entryCount': 1,
      'maxThumbSize': 0,
    }
  };

  var body = jsonEncode(data);

  var response = await http.post(url,
    headers: {"Content-Type": "application/json;charset=utf-8"},
    body: body
  );

  Map<String, dynamic> thetaImage = jsonDecode(response.body);

  String imageFileUrl = thetaImage['results']['entries'][0]['fileUrl'];

  return imageFileUrl;
}
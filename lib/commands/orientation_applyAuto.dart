import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<http.Response> orientationApplyAuto() async {
  var url = 'http://192.168.1.1/osc/commands/execute';

  Map data = {
    'name': 'camera.setOptions',
    'parameters': {
      'options': {
        "_topBottomCorrection": "ApplyAuto",
      }
    }
  };

  var body = jsonEncode(data);

  var response = await http.post(url,
      headers: {"Content-Type": "application/json;charset=utf-8"},
      body: body
  );
  print('set orientation applyAuto');

  return response;
}
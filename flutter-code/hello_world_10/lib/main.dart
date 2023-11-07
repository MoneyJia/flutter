import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'http_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('网络请求'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("data");
  }
}

void dioNetwork() async {
  final dio = Dio();

  final response = await dio.get('http://123.207.32.32:8000/api/v1/recommend');

  if (response.statusCode == HttpStatus.ok) {
    print(response.data);
  } else {
    print(" 请求失败 ${response.statusCode}");
  }
}

void sss() {
  HttpRequest.request("https://httpbin.org/get",
      params: {"name": "why", "age": 18}).then((value) {
    print(value);
  });
  HttpRequest.request("https://httpbin.org/post",
      method: "post", params: {"name": "why", 'age': 18}).then((res) {
    print(res);
  });
}

void sss2() {
  final jsonInfo = {
    "nickname": "coderwhy",
    "level": 18,
    "courses": ["语文", "数学", "英语"],
    "register_date": "2222-2-22",
    "computer": {"brand": "MackBook", "price": 1000}
  };
}

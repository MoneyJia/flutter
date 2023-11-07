import 'package:flutter/material.dart';

class TwoHomePage extends StatelessWidget {
  String _message = "";
  String _message2 = "";

  static const String routeName = "/detail";

  TwoHomePage(this._message);

  void _onbackTap(BuildContext context) {
    Navigator.of(context).pop("a detail message");
  }

  @override
  Widget build(BuildContext context) {
    /// 获取数据
    final message = ModalRoute.of(context)?.settings.arguments;

    if (message != null) {
      _message2 = message as String;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("$_message"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            _onbackTap(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("$_message2"),
          onPressed: () {
            print("返回首页");
            _onbackTap(context);
          },
        ),
      ),
    );
  }
}

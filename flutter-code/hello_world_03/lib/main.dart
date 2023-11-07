import 'package:flutter/material.dart';

main(List<String> args) {
  // runApp(Text("Hello World", textDirection: TextDirection.ltr));
  // runApp(Center(
  //   child: Text(
  //     "Hello World",
  //     textDirection: TextDirection.ltr,
  //     style: TextStyle(color: Colors.white, fontSize: 40.0),
  //   ),
  // ));

  // runApp(MaterialApp(
  //   // title: "Hello World",
  //   home: Scaffold(
  //     appBar: AppBar(
  //       title: Text("Hello World"),
  //     ),
  //     body: Center(
  //       child: Text(
  //         "Hello World",
  //         textDirection: TextDirection.ltr,
  //         style: TextStyle(color: Colors.white, fontSize: 40.0),
  //       ),
  //     ),
  //   ),
  // ));

  // runApp(
  //   MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text("Hello World21"),
  //       ),
  //       body: Center(
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Checkbox(
  //               value: true,
  //               onChanged: (value) => print("Hellow World"),
  //             ),
  //             Text(
  //               "Hello World",
  //               textDirection: TextDirection.ltr,
  //               style: TextStyle(color: Colors.red, fontSize: 40.0),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   ),
  // );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: true,
            onChanged: (value) => print("Hellow World"),
          ),
          Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.red, fontSize: 40.0),
          ),
        ],
      ),
    );
  }
}

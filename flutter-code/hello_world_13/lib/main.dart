import 'package:flutter/material.dart';
import 'event_bus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Flutter Demo")),
      body: HomeContent(),
    ));
  }
}

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Listener(
//         child: Container(
//           width: 200,
//           height: 200,
//           color: Colors.red,
//         ),
//         onPointerDown: (event) => print("手指按下:$event"),
//         onPointerMove: (event) => print("手指移动:$event"),
//         onPointerUp: (event) => print("手指抬起:$event"),
//       ),
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势测试"),
      ),
      body: GestureDetector(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          onTap: () {},
          onTapDown: (detail) {
            print(detail.globalPosition);
            print(detail.localPosition);
          },
          onTapUp: (detail) {
            print(detail.globalPosition);
            print(detail.localPosition);
          }),
    );
  }
}

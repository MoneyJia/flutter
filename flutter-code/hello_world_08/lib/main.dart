import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TextField 示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField 示例'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       child: Icon(Icons.pets, size: 60, color: Colors.red),
//       alignment: Alignment.topRight,
//       widthFactor: 3,
//       heightFactor: 3,
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Icon(Icons.pets, size: 60, color: Colors.red),
//       widthFactor: 3,
//       heightFactor: 3,
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(10),
//       child: Text(
//         '莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。',
//         style: TextStyle(
//           fontSize: 18,
//           color: Colors.redAccent,
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         color: Color.fromRGBO(3, 3, 255, .5),
//         width: 100,
//         height: 100,
//         child: Icon(Icons.pets, size: 32, color: Colors.red),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         // color: Color.fromRGBO(3, 3, 255, .5),
//         width: 100,
//         height: 100,
//         child: Icon(Icons.pets, size: 32, color: Colors.red),
//         decoration: BoxDecoration(
//           color: Colors.amber,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             color: Colors.redAccent,
//             width: 3,
//             style: BorderStyle.solid,
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.purple,
//               offset: Offset(5, 5),
//               blurRadius: 5,
//             ),
//           ],
//           gradient: LinearGradient(
//             colors: [
//               Colors.green,
//               Colors.red,
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 200,
//         height: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           image: DecorationImage(
//             image: NetworkImage(
//                 "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       // textBaseline: TextBaseline.ideographic,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Container(color: Colors.red, width: 60, height: 60),
//         Container(color: Colors.blue, width: 80, height: 80),
//         Container(color: Colors.green, width: 70, height: 70),
//         Container(color: Colors.orange, width: 100, height: 100),
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       // textBaseline: TextBaseline.ideographic,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Expanded(
//           child: Container(
//             color: Colors.red,
//             height: 60,
//           ),
//           flex: 1,
//         ),
//         Container(color: Colors.blue, width: 80, height: 80),
//         Container(color: Colors.green, width: 70, height: 70),
//         Expanded(
//           child: Container(
//             color: Colors.orange,
//             height: 100,
//           ),
//           flex: 1,
//         )
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       // textBaseline: TextBaseline.ideographic,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Expanded(
//           child: Container(
//             color: Colors.red,
//             width: 60,
//           ),
//           flex: 1,
//         ),
//         Container(color: Colors.blue, width: 80, height: 80),
//         Container(color: Colors.green, width: 70, height: 70),
//         Expanded(
//           child: Container(
//             color: Colors.orange,
//             width: 100,
//           ),
//           flex: 1,
//         )
//       ],
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          color: Colors.purple,
        ),
        Positioned(
          child: Icon(
            Icons.favorite,
            size: 50,
            color: Colors.white,
          ),
          left: 10,
          top: 10,
        ),
        Positioned(
          child: Text(
            "data",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          bottom: 20,
          right: 20,
        ),
      ],
    );
  }
}

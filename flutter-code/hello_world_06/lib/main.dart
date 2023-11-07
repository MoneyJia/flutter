import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Scaffold(
    //   appBar: AppBar(title: const Text("定风波")),
    //   body: MyHomeBody(),
    // );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("定风波1")),
        body: MyHomeBody(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ClipOval(
//         child: Image.network(
//           "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
//           width: 200,
//           height: 200,
//         ),
//       ),
//     );
//   }
// }

// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: CircleAvatar(
//         radius: 100,
//         backgroundImage: NetworkImage(
//           "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
//         ),
//         child: Container(
//           alignment: Alignment(0, .5),
//           width: 200,
//           height: 200,
//           // child: Text("斌展示"),
//         ),
//       ),
//     );
//   }
// }

// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         width: 300,
//         height: 300,
//         color: Colors.yellow,
//         child: Image.asset("images/ad_implicit_cover_cd.jpeg"),
//       ),
//     );
//   }
// }

// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Image.network(
//           "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
//           alignment: Alignment.topCenter,
//           repeat: ImageRepeat.noRepeat,
//           color: Colors.red,
//           colorBlendMode: BlendMode.colorDodge,
//           // 这几行代码注释了，为什么图片就展示出来了？
//         ),
//         width: 300,
//         height: 300,
//         color: Colors.yellow,
//       ),
//     );
//   }
// }



// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Column(
//       children: [
//         FloatingActionButton(
//           onPressed: () {
//             print("FloatingActionButton");
//           },
//           child: Text("FloatingActionButton"),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             print("ElevatedButton");
//           },
//           child: Text("ElevatedButton"),
//         ),
//         TextButton(
//           onPressed: () {
//             print("TextButton");
//           },
//           child: Text("TextButton"),
//         ),
//         OutlinedButton(
//           onPressed: () {
//             print("OutlinedButton");
//           },
//           child: Text("OutlinedButton"),
//         ),
//         // ElevatedButton(
//         //   onPressed: () {
//         //     print("同意协议");
//         //   },
//         //   child: Text(
//         //     "同意协议",
//         //     style: ElevatedButton.styleFrom(
//         //       primary: Colors.orange,
//         //       onPrimary: Colors.white,
//         //       shape: RoundedRectangleBorder(
//         //         borderRadius: BorderRadius.circular(10),
//         //       ),
//         //     )
//         //   ),
//         // ),
//       ],
//     );
//   }
// }

// class MyHomeBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return Text(
//     //   "《定风波》 苏轼 \n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
//     //   textAlign: TextAlign.center,
//     //   maxLines: 3,
//     //   overflow: TextOverflow.ellipsis,
//     //   textScaleFactor: 1.1,
//     //   style: TextStyle(
//     //     fontSize: 20,
//     //     color: Colors.purple,
//     //   ),
//     // );
//     return Text.rich(
//       TextSpan(children: [
//         TextSpan(
//           text: "《定风波》",
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         TextSpan(
//           text: " 苏轼 \n",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.redAccent,
//           ),
//         ),
//         TextSpan(
//           text: "莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.purple,
//           ),
//         ),
//       ]),
//       style: TextStyle(fontSize: 20, color: Colors.purple),
//       textAlign: TextAlign.center,
//       maxLines: 10,
//     );
//   }
// }

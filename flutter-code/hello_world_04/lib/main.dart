import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class ProductItem extends StatelessWidget {
//   final String title;
//   final String desc;
//   final String imageURL;

//   ProductItem(this.title, this.desc, this.imageURL);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Text(title, style: TextStyle(fontSize: 24)),
//         Text(desc, style: TextStyle(fontSize: 18)),
//         Image.network(imageURL)
//       ],
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.blueAccent),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("CODERWHY"),
//         ),
//         body: HomeContent(),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ProductItem("Apple1", "Macbook Product1",
//             "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
//         ProductItem("Apple2", "Macbook Product2",
//             "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
//         ProductItem("Apple3", "Macbook Product3",
//             "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
//       ],
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("CODERWHY"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          ProductItem("Apple1", "Macbook Product1",
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          ProductItem("Apple2", "Macbook Product2",
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          ProductItem("Apple3", "Macbook Product3",
              "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
        ],
      ),
    );
    // return ListView(
    //   children: <Widget>[
    //     ProductItem("Apple1", "Macbook Product1",
    //         "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
    //     ProductItem("Apple2", "Macbook Product2",
    //         "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
    //     ProductItem("Apple3", "Macbook Product3",
    //         "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
    //   ],
    // );
  }
}

class ProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  ProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 24)),
          Text(desc, style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 10,
          ),
          Image.network(imageURL)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'model/anchor.dart';

void main() {
  runApp(MyApp());
}

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
//   final TextStyle testStyle = TextStyle(fontSize: 20, color: Colors.redAccent);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(8),
//           child: Text(
//             "人的一切痛苦，本质上都是对自己无能的愤怒。",
//             style: testStyle,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8),
//           child: Text(
//             "人活在世界上，不可以有偏差；而且多少要费点劲儿，才能把自己保持到理性的轨道上。",
//             style: testStyle,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8),
//           child: Text(
//             "我活在世上，无非想要明白些道理，遇见些有趣的事。",
//             style: testStyle,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   final TextStyle testStyle = TextStyle(fontSize: 20, color: Colors.redAccent);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           leading: Icon(
//             Icons.people,
//             size: 36,
//           ),
//           title: Text("联系人"),
//           subtitle: Text("联系人信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.email,
//             size: 36,
//           ),
//           title: Text("邮箱"),
//           subtitle: Text("邮箱地址信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.message,
//             size: 36,
//           ),
//           title: Text("消息"),
//           subtitle: Text("消息详情信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.map,
//             size: 36,
//           ),
//           title: Text("地址"),
//           subtitle: Text("地址详情信息"),
//           trailing: Icon(Icons.arrow_forward_ios),
//         ),
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   final TextStyle testStyle = TextStyle(fontSize: 20, color: Colors.redAccent);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal,
//       itemExtent: 200,
//       children: <Widget>[
//         Container(color: Colors.red, width: 200),
//         Container(color: Colors.green, width: 200),
//         Container(color: Colors.blue, width: 200),
//         Container(color: Colors.purple, width: 200),
//         Container(color: Colors.orange, width: 200),
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 100,
//       itemExtent: 60,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//           leading: Icon(Icons.people),
//           title: Text("联系人$index"),
//           subtitle: Text("详细内容$index"),
//         );
//       },
//     );
//   }
// }

// class HomeContent extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MyHomeBodyState();
//   }
// }

// class MyHomeBodyState extends State<HomeContent> {
//   List<Anchor> anchors = [];

//   // 在初始化状态的方法中加载数据
//   @override
//   void initState() {
//     getAnchors().then((anchors) {
//       setState(() {
//         this.anchors = anchors;
//       });
//     });

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (BuildContext context, int index) {
//         return Padding(
//           padding: EdgeInsets.all(8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Image.network(
//                 anchors[index].imageUrl,
//                 fit: BoxFit.fitWidth,
//                 width: MediaQuery.of(context).size.width,
//               ),
//               SizedBox(height: 8),
//               Text(
//                 anchors[index].nickname,
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(height: 5),
//               Text(anchors[index].roomName)
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   Divider blueColor = Divider(color: Colors.blue);
//   Divider redColor = Divider(color: Colors.red);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//           leading: Icon(Icons.people),
//           title: Text("联系人${index + 1}"),
//           subtitle: Text("联系人电话${index + 1}"),
//         );
//       },
//       separatorBuilder: (BuildContext context, int index) {
//         return index % 2 == 0 ? redColor : blueColor;
//       },
//       itemCount: 100,
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   List<Widget> getGridWidgets() {
//     return List.generate(100, (index) {
//       return Container(
//         color: Colors.purple,
//         alignment: Alignment(0, 0),
//         child: Text(
//           "item$index",
//           style: TextStyle(fontSize: 20, color: Colors.white),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GridView(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         childAspectRatio: 1,
//       ),
//       children: getGridWidgets(),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   List<Widget> getGridWidgets() {
//     return List.generate(100, (index) {
//       return Container(
//         color: Colors.purple,
//         alignment: Alignment(0, 0),
//         child: Text(
//           "item$index",
//           style: TextStyle(fontSize: 20, color: Colors.white),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GridView(
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 150,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         childAspectRatio: 1,
//       ),
//       children: getGridWidgets(),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return CustomScrollView(
//       slivers: <Widget>[
//         SliverSafeArea(
//           // padding: EdgeInsets.all(8),
//           sliver: SliverGrid(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3,
//               crossAxisSpacing: 8,
//               mainAxisSpacing: 8,
//               childAspectRatio: 1,
//             ),
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Container(
//                   color: Colors.purple,
//                   alignment: Alignment(0, 0),
//                   child: Text(
//                     "item$index",
//                     style: TextStyle(fontSize: 20, color: Colors.white),
//                   ),
//                 );
//               },
//               childCount: 20,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return showCustomScrollView();
//   }

//   Widget showCustomScrollView() {
//     return new CustomScrollView(
//       slivers: <Widget>[
//         const SliverAppBar(
//           expandedHeight: 250.0,
//           flexibleSpace: FlexibleSpaceBar(
//             title: Text('Coderwhy Demo'),
//             background: Image(
//               image: NetworkImage(
//                 "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg",
//               ),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         new SliverGrid(
//           gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 200.0,
//             mainAxisSpacing: 10.0,
//             crossAxisSpacing: 10.0,
//             childAspectRatio: 4.0,
//           ),
//           delegate: new SliverChildBuilderDelegate(
//             (BuildContext context, int index) {
//               return new Container(
//                 alignment: Alignment.center,
//                 color: Colors.teal[100 * (index % 9)],
//                 child: new Text('grid item $index'),
//               );
//             },
//             childCount: 10,
//           ),
//         ),
//         SliverFixedExtentList(
//           itemExtent: 50.0,
//           delegate:
//               SliverChildBuilderDelegate((BuildContext context, int index) {
//             return new Container(
//               alignment: Alignment.center,
//               color: Colors.lightBlue[100 * (index % 9)],
//               child: new Text('list item $index'),
//             );
//           }, childCount: 20),
//         ),
//       ],
//     );
//   }
// }

// class HomeContent extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyHomePageState();
//   }
// }
// class MyHomePageState extends State<HomeContent> {
//   ScrollController _controller = ScrollController();
//   bool _isShowTop = false;

//   @override
//   void initState() {
//     // 初始化ScrollController
//     _controller.addListener(() {
//       var tempSsShowTop = _controller.offset >= 1000;
//       if (tempSsShowTop != _isShowTop) {
//         setState(() {
//           _isShowTop = tempSsShowTop;
//         });
//       }
//     });

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("ListView展示"),
//       ),
//       body: ListView.builder(
//         itemCount: 100,
//         itemExtent: 60,
//         controller: _controller,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text("item$index"),
//           );
//         },
//       ),
//       floatingActionButton: !_isShowTop
//           ? null
//           : FloatingActionButton(
//               child: Icon(Icons.arrow_upward),
//               onPressed: () {
//                 _controller.animateTo(
//                   0,
//                   duration: Duration(milliseconds: 1000),
//                   curve: Curves.ease,
//                 );
//               },
//             ),
//     );
//   }
// }

class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomeNotificationDemoState();
}

class MyHomeNotificationDemoState extends State<HomeContent> {
  int _progress = 0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        // 1.判断监听事件的类型
        if (notification is ScrollStartNotification) {
          print("开始滚动.....");
        } else if (notification is ScrollUpdateNotification) {
          // 当前滚动的位置和总长度
          final currentPixel = notification.metrics.pixels;
          final totalPixel = notification.metrics.maxScrollExtent;
          double progress = currentPixel / totalPixel;
          setState(() {
            _progress = (progress * 100).toInt();
          });
          print(
              "正在滚动：${notification.metrics.pixels} - ${notification.metrics.maxScrollExtent}");
        } else if (notification is ScrollEndNotification) {
          print("结束滚动....");
        }
        return false;
      },
      child: Stack(
        alignment: Alignment(.9, .9),
        children: <Widget>[
          ListView.builder(
              itemCount: 100,
              itemExtent: 60,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text("item$index"));
              }),
          CircleAvatar(
            radius: 30,
            child: Text("$_progress%"),
            backgroundColor: Colors.black54,
          )
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> names = ["aaa", "bbb", "ccc"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: names.map((name) {
          // return ListItemFull(name);
          // return ListItemFull(name, key: ValueKey(Random().nextInt(10000)));
          return ListItemFull(
            name,
            key: ValueKey(name),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          setState(() {
            names.removeAt(0);
          });
        },
      ),
    );
  }
}

// class ListItemLess extends StatelessWidget {
//   String name = "";
//   final Color randomColor = Color.fromARGB(
//       255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

//   ListItemLess(this.name);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 60,
//       color: randomColor,
//       child: Text("$name"),
//     );
//   }
// }

// class ListItemFull extends StatefulWidget {
//   final String name;

//   ListItemFull(this.name) : super();

//   @override
//   _ListItemFull createState() => _ListItemFull();
// }

// class _ListItemFull extends State<ListItemFull> {
//   final Color randomColor = Color.fromARGB(
//       255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 60,
//       color: randomColor,
//       child: Text("${widget.name}"),
//     );
//   }
// }

class ListItemFull extends StatefulWidget {
  final String name;

  ListItemFull(this.name, {Key? key}) : super(key: key);

  @override
  _ListItemFull createState() => _ListItemFull();
}

class _ListItemFull extends State<ListItemFull> {
  final Color randomColor = Color.fromARGB(
      255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 60,
      color: randomColor,
      child: Text("${widget.name}"),
    );
  }
}

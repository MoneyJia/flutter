import 'package:flutter/material.dart';
import 'mainTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
      routes: {
        MyHomePage.routeName: (ctx) =>
            MyHomePage(title: "Flutter Demo Home Page"),
        // TwoHomePage.routeName: (ctx) => TwoHomePage("two new page"),
      },
      onGenerateRoute: (settings) {
        // 在这里根据路由名称生成页面
        if (settings.name == TwoHomePage.routeName) {
          return MaterialPageRoute(
            builder: (context) {
              return TwoHomePage(settings.arguments as String);
            },
          );
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  static const String routeName = "/home";

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = "打开新页面";

  void _openNewPage(BuildContext context) {
    // final future = Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
    //   return TwoHomePage("a new page");
    // }));

    final future = Navigator.of(context)
        .pushNamed(TwoHomePage.routeName, arguments: "four new page");
    future.then((value) {
      setState(() {
        _message = value as String;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("$_message"),
          onPressed: () {
            _openNewPage(context);
          },
        ),
      ),
    );
  }
}

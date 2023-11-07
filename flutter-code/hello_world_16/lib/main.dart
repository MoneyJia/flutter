import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: HYHomePage(),
//     );
//   }
// }

// class HYHomePage extends StatelessWidget {
//   final GlobalKey<_AnimationDemo01State> demo01Key = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("动画测试"),
//       ),
//       body: AnimationDemo01(key: demo01Key),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.play_circle_filled),
//         onPressed: () {
//           if (demo01Key.currentState?.controller.isAnimating ?? false) {
//             demo01Key.currentState?.controller.stop();
//           } else {
//             demo01Key.currentState?.controller.forward();
//           }
//         },
//       ),
//     );
//   }
// }

// class AnimationDemo01 extends StatefulWidget {
//   AnimationDemo01({required Key key}) : super(key: key);

//   @override
//   _AnimationDemo01State createState() => _AnimationDemo01State();
// }

// class _AnimationDemo01State extends State<AnimationDemo01>
//     with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation<double> animation;

//   @override
//   void initState() {
//     super.initState();

//     // 1.创建AnimationController
//     controller =
//         AnimationController(duration: Duration(seconds: 1), vsync: this);
//     // 2.动画添加Curve效果
//     animation = CurvedAnimation(
//         parent: controller,
//         curve: Curves.elasticInOut,
//         reverseCurve: Curves.easeOut);
//     // 3.监听动画
//     animation.addListener(() {
//       setState(() {});
//     });
//     // 4.控制动画的翻转
//     animation.addStatusListener((status) {
//       if (status == AnimationStatus.completed) {
//         controller.reverse();
//       } else if (status == AnimationStatus.dismissed) {
//         controller.forward();
//       }
//     });
//     // 5.设置值的范围
//     animation = Tween(begin: 50.0, end: 120.0).animate(controller);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // child: Icon(
//       //   Icons.favorite,
//       //   color: Colors.red,
//       //   size: animation.value,
//       // ),
//       // child: IconAnimation(animation),
//       child: AnimatedBuilder(
//         animation: animation,
//         builder: (ctx, child) {
//           return Icon(
//             Icons.favorite,
//             color: Colors.red,
//             size: animation.value,
//           );
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

// class IconAnimation extends AnimatedWidget {
//   IconAnimation(Animation animation) : super(listenable: animation);

//   @override
//   Widget build(BuildContext context) {
//     Animation animation = listenable as Animation;
//     return Icon(
//       Icons.favorite,
//       color: Colors.red,
//       size: animation.value,
//     );
//   }
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  final GlobalKey<_AnimationDemo01State> demo01Key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表测试"),
      ),
      body: AnimationDemo01(key: demo01Key),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_filled),
        onPressed: () {
          demo01Key.currentState?.controller.forward();
        },
      ),
    );
  }
}

class AnimationDemo01 extends StatefulWidget {
  AnimationDemo01({required Key key}) : super(key: key);

  @override
  _AnimationDemo01State createState() => _AnimationDemo01State();
}

class _AnimationDemo01State extends State<AnimationDemo01>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  late Animation<Color> colorAnim;
  late Animation<double> sizeAnim;
  late Animation<double> rotationAnim;

  @override
  void initState() {
    super.initState();

    // 1.创建AnimationController
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    // 2.动画添加Curve效果
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    // 3.监听动画
    animation.addListener(() {
      setState(() {});
    });

    // 4.设置值的变化
    colorAnim = ColorTween(begin: Colors.blue, end: Colors.red)
        .animate(controller) as Animation<Color>;
    sizeAnim = Tween(begin: 0.0, end: 200.0).animate(controller);
    rotationAnim =
        Tween(begin: 0.0, end: 2 * pi).animate(controller) as Animation<double>;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: animation.value,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(animation.value),
          child: Container(
            width: sizeAnim.value,
            height: sizeAnim.value,
            color: colorAnim.value,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

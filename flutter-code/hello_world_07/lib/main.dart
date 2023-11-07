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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[TextFieldDemo()],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _FormDemoState createState() => _FormDemoState();
}

// class _FormDemoState extends State<TextFieldDemo> {
//   final registerFormKey = GlobalKey<FormState>();
//   String username = "";
//   String password = "";

//   void registerForm() {
//     if (registerFormKey.currentState != null) {
//       registerFormKey.currentState!.save();
//       print("username: $username password: $password");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           TextFormField(
//             decoration:
//                 InputDecoration(icon: Icon(Icons.people), labelText: "用户名或手机号"),
//             // onSaved: (String? value) {
//             //   if value == null {
//             //     return;
//             //   }
//             //   username = value;
//             // },
//             onChanged: (value) {
//               username = value;
//             },
//           ),
//           TextFormField(
//             obscureText: true,
//             decoration:
//                 InputDecoration(icon: Icon(Icons.lock), labelText: "密码"),
//             // onSaved: (value) {
//             //   if value == null {
//             //     return;
//             //   }
//             //   password = value;
//             // },
//             onChanged: (value) {
//               password = value;
//             },
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           Container(
//             width: double.infinity,
//             height: 44,
//             child: TextButton(
//               child: Text(
//                 "注 册",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                 ),
//               ),
//               onPressed: registerForm,
//               style: TextButton.styleFrom(
//                 backgroundColor: Colors.lightGreen,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class _FormDemoState extends State<TextFieldDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String username = "";
  String password = "";

  void registerForm() {
    if (registerFormKey.currentState != null) {
      registerFormKey.currentState!.save();
      print("username:$username password:$password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration:
                InputDecoration(icon: Icon(Icons.people), labelText: "用户名或手机号"),
            onSaved: (value) {
              this.username = value!;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration:
                InputDecoration(icon: Icon(Icons.lock), labelText: "密码"),
            onSaved: (value) {
              this.password = value!;
            },
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            height: 44,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
              child: Text(
                "注 册",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: registerForm,
            ),
          )
        ],
      ),
    );
  }
}

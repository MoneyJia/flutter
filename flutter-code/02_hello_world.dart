main(List<String> args) {
  print('Hello World');

  // String name = 'coderwhy';
  // int age = 18;
  // double height = 1.88;
  // print('${name}, ${age}, ${height}'); // 拼接方式后续会讲解

  // String content = 'Hello Dart';
  // content = 'Hello World'; // 正确的
  // content = 111; // 错误的, 将一个int值赋值给一个String变量

  // var name = 'coderwhy';
  // name = 'kobe';
  // print(name.runtimeType); // String

  // // const time = DateTime.now(); // 错误的赋值方式
  // final time = DateTime.now();
  // print(time); // 2019-04-05 09:02:54.052626

  // sleep(Duration(seconds: 2));
  // print(time); // 2019-04-05 09:02:54.052626

  // Error: Method not found: 'sleep'.

// // 1.整数类型int
//   int age = 18;
//   int hexAge = 0x12;
//   print(age);
//   print(hexAge);

// // 2.浮点类型double
//   double height = 1.88;
//   print(height);

// // 字符串和数字转化
// // 1.字符串转数字
//   var one = int.parse('111');
//   var two = double.parse('12.22');
//   print('${one} ${one.runtimeType}'); // 111 int
//   print('${two} ${two.runtimeType}'); // 12.22 double

//   // 2.数字转字符串
//   var num1 = 123;
//   var num2 = 123.456;
//   var num1Str = num1.toString();
//   var num2Str = num2.toString();
//   var num2StrD = num2.toStringAsFixed(2); // 保留两位小数
//   print('${num1Str} ${num1Str.runtimeType}'); // 123 String
//   print('${num2Str} ${num2Str.runtimeType}'); // 123.456 String
//   print('${num2StrD} ${num2StrD.runtimeType}'); // 123.46 String

// // 布尔类型
//   var isFlag = true;
//   print('$isFlag ${isFlag.runtimeType}');

// // 1.定义字符串的方式
//   var s1 = 'Hello World';
//   var s2 = "Hello Dart";
//   var s3 = 'Hello\'Fullter';
//   var s4 = "Hello'Fullter";

//   print(s1);
//   print(s2);
//   print(s3);
//   print(s4);

  // 3.拼接其他变量
  var name = 'coderwhy';
  var age = 18;
  var height = 1.88;
  print('my name is ${name}, age is $age, height is $height');

// List定义
// 1.使用类型推导定义
  var letters = ['a', 'b', 'c', 'd'];
  print('$letters ${letters.runtimeType}');

// Set的定义
// 1.使用类型推导定义
  var lettersSet = {'a', 'b', 'c', 'd'};
  print('$lettersSet ${lettersSet.runtimeType}');

// 2.明确指定类型
  Set<int> numbersSet = {1, 2, 3, 4};
  print('$numbersSet ${numbersSet.runtimeType}');

  // Map的定义
// 1.使用类型推导定义
  var infoMap1 = {'name': 'why', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');

// 2.明确指定类型
  Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
  print('$infoMap2 ${infoMap2.runtimeType}');
}

main(List<String> args) {
  print('Hello World');

// // 调用printInfo1函数
//   printInfo1('why'); // name=why age=null height=null
//   printInfo1('why', age: 18); // name=why age=18 height=null
//   printInfo1('why', age: 18, height: 1.88); // name=why age=18 height=1.88
//   printInfo1('why', height: 1.88); // name=why age=null height=1.88

//   greet(name: 'Alice', greeting: 'Hi'); // 输出: Hi, Alice!
//   greet(name: 'Bob'); // 输出: Hello, Bob!
//   greet(); // 输出: Hello, there!

// // 调用printInfo2函数
//   printInfo2('why'); // name=why age=null height=null
//   printInfo2('why', 18); // name=why age=18 height=null
//   printInfo2('why', 18, 1.88); // name=why age=18 height=1.88

// // 1.将函数赋值给一个变量
//   var bar = foo;
//   print(bar);

//   // 2.将函数作为另一个函数的参数
//   test(foo);

//   // 3.将函数作为另一个函数的返回值
//   var func = getFunc();
//   func('kobe');

// 1.定义数组
  var movies = ['盗梦空间', '星际穿越', '少年派', '大话西游'];

  // 2.使用forEach遍历: 有名字的函数
  printElement(item) {
    print(item);
  }

  movies.forEach(printElement);

  // 3.使用forEach遍历: 匿名函数
  movies.forEach((item) {
    print(item);
  });
  movies.forEach((item) => print(item));
}

// 命名可选参数
void printInfo1(String name, {int? age = 1, double? height = 1}) {
  print('name=$name age=$age height=$height');
}

void greet({String? name, String? greeting}) {
  if (name != null && greeting != null) {
    print('$greeting, $name!');
  } else if (name != null) {
    print('Hello, $name!');
  } else {
    print('Hello, there!');
  }
}

// 定义位置可选参数
void printInfo2(String name, [int? age = 1, double? height = 1]) {
  print('name=$name age=$age height=$height');
}

// 1.定义一个函数
foo(String name) {
  print('传入的name:$name');
}

// 2.将函数作为另外一个函数的参数
test(Function func) {
  func('coderwhy');
}

// 3.将函数作为另一个函数的返回值
getFunc() {
  return foo;
}

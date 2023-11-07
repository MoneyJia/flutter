// class Person {
//   String? name;

//   eat() {
//     print('${name ?? '2222'}在吃东西');
//   }
// }

// class Person {
//   String name;

//   // 构造函数中对name进行初始化
//   Person(this.name);

//   eat() {
//     print('$name在吃东西');
//   }
// }

// void main(List<String> args) {
//   // 创建类的对象时传入name的值
//   var p = Person('why');

//   // 调用对象的方法
//   p.eat();
// }

// main(List<String> args) {
//   // 1.创建类的对象
//   var p = Person(); // 直接使用Person()也可以创建

//   // 2.给对象的属性赋值
//   p.name = 'why';

//   // 3.调用对象的方法
//   p.eat();
// }

// class Person {
//   String name;
//   int age;

//   Person(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }

//   @override
//   String toString() {
//     return 'name=$name age=$age';
//   }
// }

// main(List<String> args) {
//   // 1.创建类的对象
//   var p = Person("111", 12); // 直接使用Person()也可以创建

//   // 3.调用对象的方法
//   var a = p.toString();
//   print(a);
// }

// class Person {
//   String name;
//   int age;

//   // // 构造函数中初始化name和age字段
//   // Person(String name, int age)
//   //     : name = name,
//   //       age = age;
//   Person(this.name, this.age);

//   Person.begin()
//       : name = '', // 使用空字符串进行初始化
//         age = 0;

//   @override
//   String toString() {
//     return 'name=$name age=$age';
//   }
// }

// void main(List<String> args) {
//   // 1.创建类的对象
//   var p = Person("111", 12); // 此时会调用构造函数进行初始化

//   var p1 = Person.begin(); // 调用命名构造函数进行初始化

//   // 2.调用对象的方法，并且打印结果
//   print(p.toString()); // 输出: name=111 age=12
//   print(p1.toString());
// }

// class Person {
//   String name;
//   int age;

//   Person() {
//     name = '';
//     age = 0;
//   }
//   // 命名构造方法
//   Person.withArgments(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }

//   @override
//   String toString() {
//     return 'name=$name age=$age';
//   }
// }

// void main(List<String> args) {
//   // 创建对象
//   var p1 = new Person();
//   print(p1);
//   var p2 = new Person.withArgments('why', 18);
//   print(p2);
// }

main(List<String> args) {
  var p1 = Person('why');
  var p2 = Person('why');
  print(identical(p1, p2)); // true
}

class Person {
  String name;

  static final Map<String, Person> _cache = <String, Person>{};

  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final p = Person._internal(name);
      _cache[name] = p;
      return p;
    }
  }

  Person._internal(this.name);
}

import 'package:json_annotation/json_annotation.dart';

import 'Computer.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String name;
  String email;
  @JsonKey(name: "register_date")
  String registerDate;
  List<String> courses;
  Computer computer;

  User(this.name, this.email, this.registerDate, this.courses, this.computer);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return 'User{name: $name, email: $email, registerDate: $registerDate, courses: $courses, computer: $computer}';
  }
}

// void sss2() {
//   final jsonInfo = {
//     "nickname": "coderwhy",
//     "level": 18,
//     "courses": ["语文", "数学", "英语"],
//     "register_date": "2222-2-22",
//     "computer": {"brand": "MackBook", "price": 1000}
//   };
// }
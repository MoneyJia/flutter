import 'package:flutter/material.dart';

class Person1 {
  String name = "";
  String avatarURL = "";

  Person1.fromMap(Map<String, dynamic> json) {
    this.name = json["name"];
    this.avatarURL = json["avatars"]["medium"];
  }
}

class Person2 {
  late String name;
  late String avatarURL;

  Person2.fromMap(Map<String, dynamic> json) {
    this.name = json["name"];
    this.avatarURL = json["avatars"]["medium"];
  }
}

class Actor extends Person1 {
  Actor.fromMap(Map<String, dynamic> json) : super.fromMap(json);
}

class Director extends Person1 {
  Director.fromMap(Map<String, dynamic> json) : super.fromMap(json);
}

int counter = 1;

class MovieItem {
  int rank = 0;
  String imageURL = "";
  String title = "";
  String playDate = "";
  double rating = 0.0;
  List<String> genres = [];
  List<Actor> casts = [];
  Director director = Director.fromMap({});
  String originalTitle = "";

  MovieItem.fromMap(Map<String, dynamic> json) {
    this.rank = counter++;
    this.imageURL = json["images"]["medium"];
    this.title = json["title"];
    this.playDate = json["year"];
    this.rating = json["rating"]["average"];
    this.genres = json["genres"].cast<String>();
    this.casts = (json["casts"] as List<dynamic>).map((item) {
      return Actor.fromMap(item);
    }).toList();
    this.director = Director.fromMap(json["directors"][0]);
    this.originalTitle = json["original_title"];
  }
}

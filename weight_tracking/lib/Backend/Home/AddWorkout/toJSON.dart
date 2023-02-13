import 'package:flutter/material.dart';

class Workoutebene{
  late String name;
  late int sets;

  Map toJson() => {
    'name': name,
    'sets': sets,
  };


  @override
  String toString() {
    return 'Name: $name Sätze: $sets';
  }

  Workoutebene(this.name, this.sets);
}

class Workouttag{
  late String name;
  late List<Workoutebene> ebenen;

  Map toJson() => {
    'name': name,
    'ebenen': ebenen,
  };

  Workouttag(this.name, this.ebenen);
}

class Workout{
  late String name;
  late List<Workouttag> tage;

  Map toJson() => {
    'name': name,
    'tage': tage,
  };


  Workout(this.name, this.tage);

}
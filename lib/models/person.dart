import 'package:meta/meta.dart';

class Person {
  String name;
  int age;
  final List<Person> parents = [];
  final List<Person> children = [];

  Person({
    @required this.name,
    @required this.age,
  });

  String cheer() => 'YAAAY!!!';
}
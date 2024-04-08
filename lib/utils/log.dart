// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

class User {
  String name;

  int age;

  String sex;
  User({
    required this.name,
    required this.age,
    required this.sex,
  });

  User copyWith({
    String? name,
    int? age,
    String? sex,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
      sex: sex ?? this.sex,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'sex': sex,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      age: map['age'] as int,
      sex: map['sex'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(name: $name, age: $age, sex: $sex)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age && other.sex == sex;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode ^ sex.hashCode;
}

final aListOfStrings = ['one', 'two', 'three'];
final aSetOfStrings = {'one', 'two', 'three'};
final aMapOfStringsToInts = {
  'one': 1,
  'two': 2,
  'three': 3,
};

final errs = <String>[];

String printName(String name, String lastName, {String? midName}) {
  if (midName != null) {
    return 'midName为空啊';
  }

  return '你们号';
}

String str = printName('213', '123', midName: '123');

class Car {
  int red;
  int green;
  int blue;

  Car({required this.red, required this.green, required this.blue});
}

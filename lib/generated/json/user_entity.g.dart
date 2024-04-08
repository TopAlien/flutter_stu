import 'package:flutter_card/generated/json/base/json_convert_content.dart';
import 'package:flutter_card/entry/user_entity.dart';

UserEntity $UserEntityFromJson(Map<String, dynamic> json) {
  final UserEntity userEntity = UserEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    userEntity.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    userEntity.name = name;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    userEntity.gender = gender;
  }
  final int? age = jsonConvert.convert<int>(json['age']);
  if (age != null) {
    userEntity.age = age;
  }
  return userEntity;
}

Map<String, dynamic> $UserEntityToJson(UserEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['gender'] = entity.gender;
  data['age'] = entity.age;
  return data;
}

extension UserEntityExtension on UserEntity {
  UserEntity copyWith({
    int? id,
    String? name,
    String? gender,
    int? age,
  }) {
    return UserEntity()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..gender = gender ?? this.gender
      ..age = age ?? this.age;
  }
}
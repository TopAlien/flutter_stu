import 'package:flutter_card/generated/json/base/json_field.dart';
import 'package:flutter_card/generated/json/user_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserEntity {
	int? id = 0;
	String? name = '';
	String? gender = '';
	int? age = 0;

	UserEntity();

	factory UserEntity.fromJson(Map<String, dynamic> json) => $UserEntityFromJson(json);

	Map<String, dynamic> toJson() => $UserEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
import 'package:flutter_card/generated/json/base/json_field.dart';
import 'package:flutter_card/generated/json/todo_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class TodoEntity {
	int userId = 0;
	int? id = 0;
	String? title = '';
	bool? completed = false;

	TodoEntity();

	factory TodoEntity.fromJson(Map<String, dynamic> json) => $TodoEntityFromJson(json);

	Map<String, dynamic> toJson() => $TodoEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
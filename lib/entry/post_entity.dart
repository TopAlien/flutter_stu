import 'package:flutter_card/generated/json/base/json_field.dart';
import 'package:flutter_card/generated/json/post_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class PostEntity {
	int? id = 0;
	String? title = '';
	String? body = '';
	int? userId = 0;
	String? sex = '';

	PostEntity();

	factory PostEntity.fromJson(Map<String, dynamic> json) => $PostEntityFromJson(json);

	Map<String, dynamic> toJson() => $PostEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
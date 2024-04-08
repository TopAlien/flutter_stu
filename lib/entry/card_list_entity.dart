import 'package:flutter_card/generated/json/base/json_field.dart';
import 'package:flutter_card/generated/json/card_list_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class CardListEntity {
	double? no;
	String? name = '';
	String? type = '';
	String? fs = '';
	double? num;
	String? createTime = '';
	String? status = '';

	CardListEntity();

	factory CardListEntity.fromJson(Map<String, dynamic> json) => $CardListEntityFromJson(json);

	Map<String, dynamic> toJson() => $CardListEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}
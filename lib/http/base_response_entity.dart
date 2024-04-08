import 'package:flutter_card/generated/json/base/json_convert_content.dart';
import 'dart:convert';

class BaseResponseEntity<T> {
  late int code;
  late String msg;
  late T data;

  BaseResponseEntity();

  factory BaseResponseEntity.fromJson(Map<String, dynamic> json) =>
      $BaseResponseEntityFromJson<T>(json);

  Map<String, dynamic> toJson() => $BaseResponseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

BaseResponseEntity<T> $BaseResponseEntityFromJson<T>(
    Map<String, dynamic> json) {
  final BaseResponseEntity<T> baseResponseEntity = BaseResponseEntity<T>();
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    baseResponseEntity.code = code;
  }
  final String? msg = jsonConvert.convert<String>(json['msg']);
  if (msg != null) {
    baseResponseEntity.msg = msg;
  }
  final T? data = JsonConvert.fromJsonAsT<T>(json['data']);
  if (data != null) {
    baseResponseEntity.data = data;
  }
  return baseResponseEntity;
}

Map<String, dynamic> $BaseResponseEntityToJson(BaseResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  data['msg'] = entity.msg;
  data['data'] = entity.data;
  return data;
}

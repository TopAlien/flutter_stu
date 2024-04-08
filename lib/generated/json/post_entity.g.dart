import 'package:flutter_card/generated/json/base/json_convert_content.dart';
import 'package:flutter_card/entry/post_entity.dart';

PostEntity $PostEntityFromJson(Map<String, dynamic> json) {
  final PostEntity postEntity = PostEntity();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    postEntity.id = id;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    postEntity.title = title;
  }
  final String? body = jsonConvert.convert<String>(json['body']);
  if (body != null) {
    postEntity.body = body;
  }
  final int? userId = jsonConvert.convert<int>(json['userId']);
  if (userId != null) {
    postEntity.userId = userId;
  }
  final String? sex = jsonConvert.convert<String>(json['sex']);
  if (sex != null) {
    postEntity.sex = sex;
  }
  return postEntity;
}

Map<String, dynamic> $PostEntityToJson(PostEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['title'] = entity.title;
  data['body'] = entity.body;
  data['userId'] = entity.userId;
  data['sex'] = entity.sex;
  return data;
}

extension PostEntityExtension on PostEntity {
  PostEntity copyWith({
    int? id,
    String? title,
    String? body,
    int? userId,
    String? sex,
  }) {
    return PostEntity()
      ..id = id ?? this.id
      ..title = title ?? this.title
      ..body = body ?? this.body
      ..userId = userId ?? this.userId
      ..sex = sex ?? this.sex;
  }
}
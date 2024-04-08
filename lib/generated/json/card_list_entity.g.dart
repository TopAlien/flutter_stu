import 'package:flutter_card/generated/json/base/json_convert_content.dart';
import 'package:flutter_card/entry/card_list_entity.dart';

CardListEntity $CardListEntityFromJson(Map<String, dynamic> json) {
  final CardListEntity cardListEntity = CardListEntity();
  final double? no = jsonConvert.convert<double>(json['no']);
  if (no != null) {
    cardListEntity.no = no;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    cardListEntity.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    cardListEntity.type = type;
  }
  final String? fs = jsonConvert.convert<String>(json['fs']);
  if (fs != null) {
    cardListEntity.fs = fs;
  }
  final double? num = jsonConvert.convert<double>(json['num']);
  if (num != null) {
    cardListEntity.num = num;
  }
  final String? createTime = jsonConvert.convert<String>(json['createTime']);
  if (createTime != null) {
    cardListEntity.createTime = createTime;
  }
  final String? status = jsonConvert.convert<String>(json['status']);
  if (status != null) {
    cardListEntity.status = status;
  }
  return cardListEntity;
}

Map<String, dynamic> $CardListEntityToJson(CardListEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['no'] = entity.no;
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['fs'] = entity.fs;
  data['num'] = entity.num;
  data['createTime'] = entity.createTime;
  data['status'] = entity.status;
  return data;
}

extension CardListEntityExtension on CardListEntity {
  CardListEntity copyWith({
    double? no,
    String? name,
    String? type,
    String? fs,
    double? num,
    String? createTime,
    String? status,
  }) {
    return CardListEntity()
      ..no = no ?? this.no
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..fs = fs ?? this.fs
      ..num = num ?? this.num
      ..createTime = createTime ?? this.createTime
      ..status = status ?? this.status;
  }
}
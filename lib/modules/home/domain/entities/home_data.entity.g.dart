// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDataEntity _$HomeDataEntityFromJson(Map<String, dynamic> json) =>
    _HomeDataEntity(
      firstDate: DateTime.parse(json['firstDate'] as String),
      bgImagePath: json['bgImagePath'] as String,
      firstAvatar: json['firstAvatar'] as String,
      secondAvatar: json['secondAvatar'] as String,
    );

Map<String, dynamic> _$HomeDataEntityToJson(_HomeDataEntity instance) =>
    <String, dynamic>{
      'firstDate': instance.firstDate.toIso8601String(),
      'bgImagePath': instance.bgImagePath,
      'firstAvatar': instance.firstAvatar,
      'secondAvatar': instance.secondAvatar,
    };

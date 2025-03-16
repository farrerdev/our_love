// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memories_data.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemoryEntity _$MemoryEntityFromJson(Map<String, dynamic> json) => MemoryEntity(
      date: DateTime.parse(json['date'] as String),
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MemoryEntityToJson(MemoryEntity instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
    };

MemoriesPagingEntity _$MemoriesPagingEntityFromJson(
        Map<String, dynamic> json) =>
    MemoriesPagingEntity(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => MemoryEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pageNo: (json['pageNo'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalRecords: (json['totalRecords'] as num).toInt(),
    );

Map<String, dynamic> _$MemoriesPagingEntityToJson(
        MemoriesPagingEntity instance) =>
    <String, dynamic>{
      'pageNo': instance.pageNo,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'totalRecords': instance.totalRecords,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

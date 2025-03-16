// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_data.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingEntity _$PagingEntityFromJson(Map<String, dynamic> json) => PagingEntity(
      pageNo: (json['pageNo'] as num?)?.toInt() ?? 1,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$PagingEntityToJson(PagingEntity instance) =>
    <String, dynamic>{
      'pageNo': instance.pageNo,
      'pageSize': instance.pageSize,
    };

ResultPagingEntity _$ResultPagingEntityFromJson(Map<String, dynamic> json) =>
    ResultPagingEntity(
      totalPages: (json['totalPages'] as num).toInt(),
      totalRecords: (json['totalRecords'] as num).toInt(),
      pageNo: (json['pageNo'] as num?)?.toInt() ?? 1,
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$ResultPagingEntityToJson(ResultPagingEntity instance) =>
    <String, dynamic>{
      'pageNo': instance.pageNo,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'totalRecords': instance.totalRecords,
    };

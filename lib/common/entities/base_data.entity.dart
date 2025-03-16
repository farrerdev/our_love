import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_data.entity.g.dart';

@JsonSerializable()
class PagingEntity {
  int pageNo;
  int pageSize;

  PagingEntity({this.pageNo = 1, this.pageSize = 20});

  factory PagingEntity.fromJson(Map<String, dynamic> json) =>
      _$PagingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PagingEntityToJson(this);
}

@JsonSerializable()
class ResultPagingEntity extends PagingEntity {
  int totalPages;
  int totalRecords;

  ResultPagingEntity({
    required this.totalPages,
    required this.totalRecords,
    super.pageNo,
    super.pageSize,
  });

  factory ResultPagingEntity.fromJson(Map<String, dynamic> json) =>
      _$ResultPagingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ResultPagingEntityToJson(this);
}
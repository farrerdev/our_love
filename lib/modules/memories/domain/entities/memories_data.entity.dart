import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_love/common/entities/base_data.entity.dart';

part 'memories_data.entity.g.dart';

@JsonSerializable()
class MemoryEntity {
  final DateTime date;
  final String? title;
  final String? description;

  MemoryEntity({required this.date, this.title, this.description});

  factory MemoryEntity.fromJson(Map<String, dynamic> json) =>
      _$MemoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MemoryEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MemoriesPagingEntity extends ResultPagingEntity {
  final List<MemoryEntity> data;

  MemoriesPagingEntity({
    this.data = const [],
    required super.pageNo,
    required super.pageSize,
    required super.totalPages,
    required super.totalRecords,
  });

  factory MemoriesPagingEntity.fromJson(Map<String, dynamic> json) =>
      _$MemoriesPagingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MemoriesPagingEntityToJson(this);
}

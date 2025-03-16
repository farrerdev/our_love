import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_memory.vm.freezed.dart';

@freezed
abstract class SubmitMemoryData with _$SubmitMemoryData {
  const factory SubmitMemoryData({
   required DateTime date,
     String? title,
    String? description,
    String? mediaSources,
  }) = _SubmitMemoryData;
}
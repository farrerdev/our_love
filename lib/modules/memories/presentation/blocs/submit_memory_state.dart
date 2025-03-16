part of 'submit_memory_cubit.dart';

@freezed
abstract class SubmitMemoryState with _$SubmitMemoryState {
  const factory SubmitMemoryState({
    SubmitMemoryData? initMemory,
    required SubmitMemoryData memory,
    required SubmitStatus submitStatus,
  }) = _SubmitMemoryState;

  factory SubmitMemoryState.init() => SubmitMemoryState(
        memory: SubmitMemoryData(
          date: DateTime.now(),
        ),
        submitStatus: SubmitStatus.enabled,
      );
}

enum SubmitStatus { enabled, processing, success, failed }

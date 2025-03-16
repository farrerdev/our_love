// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_memory_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitMemoryState {
  SubmitMemoryData? get initMemory;
  SubmitMemoryData get memory;
  SubmitStatus get submitStatus;

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubmitMemoryStateCopyWith<SubmitMemoryState> get copyWith =>
      _$SubmitMemoryStateCopyWithImpl<SubmitMemoryState>(
          this as SubmitMemoryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubmitMemoryState &&
            (identical(other.initMemory, initMemory) ||
                other.initMemory == initMemory) &&
            (identical(other.memory, memory) || other.memory == memory) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initMemory, memory, submitStatus);

  @override
  String toString() {
    return 'SubmitMemoryState(initMemory: $initMemory, memory: $memory, submitStatus: $submitStatus)';
  }
}

/// @nodoc
abstract mixin class $SubmitMemoryStateCopyWith<$Res> {
  factory $SubmitMemoryStateCopyWith(
          SubmitMemoryState value, $Res Function(SubmitMemoryState) _then) =
      _$SubmitMemoryStateCopyWithImpl;
  @useResult
  $Res call(
      {SubmitMemoryData? initMemory,
      SubmitMemoryData memory,
      SubmitStatus submitStatus});

  $SubmitMemoryDataCopyWith<$Res>? get initMemory;
  $SubmitMemoryDataCopyWith<$Res> get memory;
}

/// @nodoc
class _$SubmitMemoryStateCopyWithImpl<$Res>
    implements $SubmitMemoryStateCopyWith<$Res> {
  _$SubmitMemoryStateCopyWithImpl(this._self, this._then);

  final SubmitMemoryState _self;
  final $Res Function(SubmitMemoryState) _then;

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initMemory = freezed,
    Object? memory = null,
    Object? submitStatus = null,
  }) {
    return _then(_self.copyWith(
      initMemory: freezed == initMemory
          ? _self.initMemory
          : initMemory // ignore: cast_nullable_to_non_nullable
              as SubmitMemoryData?,
      memory: null == memory
          ? _self.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as SubmitMemoryData,
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as SubmitStatus,
    ));
  }

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubmitMemoryDataCopyWith<$Res>? get initMemory {
    if (_self.initMemory == null) {
      return null;
    }

    return $SubmitMemoryDataCopyWith<$Res>(_self.initMemory!, (value) {
      return _then(_self.copyWith(initMemory: value));
    });
  }

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubmitMemoryDataCopyWith<$Res> get memory {
    return $SubmitMemoryDataCopyWith<$Res>(_self.memory, (value) {
      return _then(_self.copyWith(memory: value));
    });
  }
}

/// @nodoc

class _SubmitMemoryState implements SubmitMemoryState {
  const _SubmitMemoryState(
      {this.initMemory, required this.memory, required this.submitStatus});

  @override
  final SubmitMemoryData? initMemory;
  @override
  final SubmitMemoryData memory;
  @override
  final SubmitStatus submitStatus;

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubmitMemoryStateCopyWith<_SubmitMemoryState> get copyWith =>
      __$SubmitMemoryStateCopyWithImpl<_SubmitMemoryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitMemoryState &&
            (identical(other.initMemory, initMemory) ||
                other.initMemory == initMemory) &&
            (identical(other.memory, memory) || other.memory == memory) &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initMemory, memory, submitStatus);

  @override
  String toString() {
    return 'SubmitMemoryState(initMemory: $initMemory, memory: $memory, submitStatus: $submitStatus)';
  }
}

/// @nodoc
abstract mixin class _$SubmitMemoryStateCopyWith<$Res>
    implements $SubmitMemoryStateCopyWith<$Res> {
  factory _$SubmitMemoryStateCopyWith(
          _SubmitMemoryState value, $Res Function(_SubmitMemoryState) _then) =
      __$SubmitMemoryStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SubmitMemoryData? initMemory,
      SubmitMemoryData memory,
      SubmitStatus submitStatus});

  @override
  $SubmitMemoryDataCopyWith<$Res>? get initMemory;
  @override
  $SubmitMemoryDataCopyWith<$Res> get memory;
}

/// @nodoc
class __$SubmitMemoryStateCopyWithImpl<$Res>
    implements _$SubmitMemoryStateCopyWith<$Res> {
  __$SubmitMemoryStateCopyWithImpl(this._self, this._then);

  final _SubmitMemoryState _self;
  final $Res Function(_SubmitMemoryState) _then;

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? initMemory = freezed,
    Object? memory = null,
    Object? submitStatus = null,
  }) {
    return _then(_SubmitMemoryState(
      initMemory: freezed == initMemory
          ? _self.initMemory
          : initMemory // ignore: cast_nullable_to_non_nullable
              as SubmitMemoryData?,
      memory: null == memory
          ? _self.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as SubmitMemoryData,
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as SubmitStatus,
    ));
  }

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubmitMemoryDataCopyWith<$Res>? get initMemory {
    if (_self.initMemory == null) {
      return null;
    }

    return $SubmitMemoryDataCopyWith<$Res>(_self.initMemory!, (value) {
      return _then(_self.copyWith(initMemory: value));
    });
  }

  /// Create a copy of SubmitMemoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubmitMemoryDataCopyWith<$Res> get memory {
    return $SubmitMemoryDataCopyWith<$Res>(_self.memory, (value) {
      return _then(_self.copyWith(memory: value));
    });
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_memory.vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitMemoryData {
  DateTime get date;
  String? get title;
  String? get description;
  String? get mediaSources;

  /// Create a copy of SubmitMemoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubmitMemoryDataCopyWith<SubmitMemoryData> get copyWith =>
      _$SubmitMemoryDataCopyWithImpl<SubmitMemoryData>(
          this as SubmitMemoryData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubmitMemoryData &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mediaSources, mediaSources) ||
                other.mediaSources == mediaSources));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, title, description, mediaSources);

  @override
  String toString() {
    return 'SubmitMemoryData(date: $date, title: $title, description: $description, mediaSources: $mediaSources)';
  }
}

/// @nodoc
abstract mixin class $SubmitMemoryDataCopyWith<$Res> {
  factory $SubmitMemoryDataCopyWith(
          SubmitMemoryData value, $Res Function(SubmitMemoryData) _then) =
      _$SubmitMemoryDataCopyWithImpl;
  @useResult
  $Res call(
      {DateTime date,
      String? title,
      String? description,
      String? mediaSources});
}

/// @nodoc
class _$SubmitMemoryDataCopyWithImpl<$Res>
    implements $SubmitMemoryDataCopyWith<$Res> {
  _$SubmitMemoryDataCopyWithImpl(this._self, this._then);

  final SubmitMemoryData _self;
  final $Res Function(SubmitMemoryData) _then;

  /// Create a copy of SubmitMemoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? mediaSources = freezed,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaSources: freezed == mediaSources
          ? _self.mediaSources
          : mediaSources // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _SubmitMemoryData implements SubmitMemoryData {
  const _SubmitMemoryData(
      {required this.date, this.title, this.description, this.mediaSources});

  @override
  final DateTime date;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? mediaSources;

  /// Create a copy of SubmitMemoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubmitMemoryDataCopyWith<_SubmitMemoryData> get copyWith =>
      __$SubmitMemoryDataCopyWithImpl<_SubmitMemoryData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitMemoryData &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mediaSources, mediaSources) ||
                other.mediaSources == mediaSources));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, title, description, mediaSources);

  @override
  String toString() {
    return 'SubmitMemoryData(date: $date, title: $title, description: $description, mediaSources: $mediaSources)';
  }
}

/// @nodoc
abstract mixin class _$SubmitMemoryDataCopyWith<$Res>
    implements $SubmitMemoryDataCopyWith<$Res> {
  factory _$SubmitMemoryDataCopyWith(
          _SubmitMemoryData value, $Res Function(_SubmitMemoryData) _then) =
      __$SubmitMemoryDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String? title,
      String? description,
      String? mediaSources});
}

/// @nodoc
class __$SubmitMemoryDataCopyWithImpl<$Res>
    implements _$SubmitMemoryDataCopyWith<$Res> {
  __$SubmitMemoryDataCopyWithImpl(this._self, this._then);

  final _SubmitMemoryData _self;
  final $Res Function(_SubmitMemoryData) _then;

  /// Create a copy of SubmitMemoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? mediaSources = freezed,
  }) {
    return _then(_SubmitMemoryData(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaSources: freezed == mediaSources
          ? _self.mediaSources
          : mediaSources // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

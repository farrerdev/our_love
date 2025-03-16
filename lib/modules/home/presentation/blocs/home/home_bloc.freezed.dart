// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeState {
  LoadStatus get loadStatus;
  HomeDataEntity get initData;
  HomeDataEntity get data;
  bool get isEditing;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus) &&
            (identical(other.initData, initData) ||
                other.initData == initData) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loadStatus, initData, data, isEditing);

  @override
  String toString() {
    return 'HomeState(loadStatus: $loadStatus, initData: $initData, data: $data, isEditing: $isEditing)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {LoadStatus loadStatus,
      HomeDataEntity initData,
      HomeDataEntity data,
      bool isEditing});

  $HomeDataEntityCopyWith<$Res> get initData;
  $HomeDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadStatus = null,
    Object? initData = null,
    Object? data = null,
    Object? isEditing = null,
  }) {
    return _then(_self.copyWith(
      loadStatus: null == loadStatus
          ? _self.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      initData: null == initData
          ? _self.initData
          : initData // ignore: cast_nullable_to_non_nullable
              as HomeDataEntity,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeDataEntity,
      isEditing: null == isEditing
          ? _self.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDataEntityCopyWith<$Res> get initData {
    return $HomeDataEntityCopyWith<$Res>(_self.initData, (value) {
      return _then(_self.copyWith(initData: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDataEntityCopyWith<$Res> get data {
    return $HomeDataEntityCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc

class _HomeState implements HomeState {
  const _HomeState(
      {required this.loadStatus,
      required this.initData,
      required this.data,
      required this.isEditing});

  @override
  final LoadStatus loadStatus;
  @override
  final HomeDataEntity initData;
  @override
  final HomeDataEntity data;
  @override
  final bool isEditing;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus) &&
            (identical(other.initData, initData) ||
                other.initData == initData) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loadStatus, initData, data, isEditing);

  @override
  String toString() {
    return 'HomeState(loadStatus: $loadStatus, initData: $initData, data: $data, isEditing: $isEditing)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {LoadStatus loadStatus,
      HomeDataEntity initData,
      HomeDataEntity data,
      bool isEditing});

  @override
  $HomeDataEntityCopyWith<$Res> get initData;
  @override
  $HomeDataEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loadStatus = null,
    Object? initData = null,
    Object? data = null,
    Object? isEditing = null,
  }) {
    return _then(_HomeState(
      loadStatus: null == loadStatus
          ? _self.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as LoadStatus,
      initData: null == initData
          ? _self.initData
          : initData // ignore: cast_nullable_to_non_nullable
              as HomeDataEntity,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeDataEntity,
      isEditing: null == isEditing
          ? _self.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDataEntityCopyWith<$Res> get initData {
    return $HomeDataEntityCopyWith<$Res>(_self.initData, (value) {
      return _then(_self.copyWith(initData: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDataEntityCopyWith<$Res> get data {
    return $HomeDataEntityCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$ResponseStatus {
  FormzSubmissionStatus get status;
  String? get message;

  /// Create a copy of ResponseStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseStatusCopyWith<ResponseStatus> get copyWith =>
      _$ResponseStatusCopyWithImpl<ResponseStatus>(
          this as ResponseStatus, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseStatus &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @override
  String toString() {
    return 'ResponseStatus(status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ResponseStatusCopyWith<$Res> {
  factory $ResponseStatusCopyWith(
          ResponseStatus value, $Res Function(ResponseStatus) _then) =
      _$ResponseStatusCopyWithImpl;
  @useResult
  $Res call({FormzSubmissionStatus status, String? message});
}

/// @nodoc
class _$ResponseStatusCopyWithImpl<$Res>
    implements $ResponseStatusCopyWith<$Res> {
  _$ResponseStatusCopyWithImpl(this._self, this._then);

  final ResponseStatus _self;
  final $Res Function(ResponseStatus) _then;

  /// Create a copy of ResponseStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _ResponseStatus implements ResponseStatus {
  const _ResponseStatus({required this.status, this.message});

  @override
  final FormzSubmissionStatus status;
  @override
  final String? message;

  /// Create a copy of ResponseStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseStatusCopyWith<_ResponseStatus> get copyWith =>
      __$ResponseStatusCopyWithImpl<_ResponseStatus>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseStatus &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @override
  String toString() {
    return 'ResponseStatus(status: $status, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ResponseStatusCopyWith<$Res>
    implements $ResponseStatusCopyWith<$Res> {
  factory _$ResponseStatusCopyWith(
          _ResponseStatus value, $Res Function(_ResponseStatus) _then) =
      __$ResponseStatusCopyWithImpl;
  @override
  @useResult
  $Res call({FormzSubmissionStatus status, String? message});
}

/// @nodoc
class __$ResponseStatusCopyWithImpl<$Res>
    implements _$ResponseStatusCopyWith<$Res> {
  __$ResponseStatusCopyWithImpl(this._self, this._then);

  final _ResponseStatus _self;
  final $Res Function(_ResponseStatus) _then;

  /// Create a copy of ResponseStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_ResponseStatus(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

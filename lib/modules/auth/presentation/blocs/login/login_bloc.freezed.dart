// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  ResponseStatus get submitStatus;
  UserLoginResponseEntity? get userLoginResponse;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.userLoginResponse, userLoginResponse) ||
                other.userLoginResponse == userLoginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitStatus, userLoginResponse);

  @override
  String toString() {
    return 'LoginState(submitStatus: $submitStatus, userLoginResponse: $userLoginResponse)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {ResponseStatus submitStatus,
      UserLoginResponseEntity? userLoginResponse});

  $ResponseStatusCopyWith<$Res> get submitStatus;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitStatus = null,
    Object? userLoginResponse = freezed,
  }) {
    return _then(_self.copyWith(
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
      userLoginResponse: freezed == userLoginResponse
          ? _self.userLoginResponse
          : userLoginResponse // ignore: cast_nullable_to_non_nullable
              as UserLoginResponseEntity?,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseStatusCopyWith<$Res> get submitStatus {
    return $ResponseStatusCopyWith<$Res>(_self.submitStatus, (value) {
      return _then(_self.copyWith(submitStatus: value));
    });
  }
}

/// @nodoc

class _LoginState implements LoginState {
  const _LoginState(
      {this.submitStatus = ResponseStatus.initial, this.userLoginResponse});

  @override
  @JsonKey()
  final ResponseStatus submitStatus;
  @override
  final UserLoginResponseEntity? userLoginResponse;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.submitStatus, submitStatus) ||
                other.submitStatus == submitStatus) &&
            (identical(other.userLoginResponse, userLoginResponse) ||
                other.userLoginResponse == userLoginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitStatus, userLoginResponse);

  @override
  String toString() {
    return 'LoginState(submitStatus: $submitStatus, userLoginResponse: $userLoginResponse)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ResponseStatus submitStatus,
      UserLoginResponseEntity? userLoginResponse});

  @override
  $ResponseStatusCopyWith<$Res> get submitStatus;
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? submitStatus = null,
    Object? userLoginResponse = freezed,
  }) {
    return _then(_LoginState(
      submitStatus: null == submitStatus
          ? _self.submitStatus
          : submitStatus // ignore: cast_nullable_to_non_nullable
              as ResponseStatus,
      userLoginResponse: freezed == userLoginResponse
          ? _self.userLoginResponse
          : userLoginResponse // ignore: cast_nullable_to_non_nullable
              as UserLoginResponseEntity?,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseStatusCopyWith<$Res> get submitStatus {
    return $ResponseStatusCopyWith<$Res>(_self.submitStatus, (value) {
      return _then(_self.copyWith(submitStatus: value));
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

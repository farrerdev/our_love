// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RootState {
  int get currentTab;

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RootStateCopyWith<RootState> get copyWith =>
      _$RootStateCopyWithImpl<RootState>(this as RootState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RootState &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTab);

  @override
  String toString() {
    return 'RootState(currentTab: $currentTab)';
  }
}

/// @nodoc
abstract mixin class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) _then) =
      _$RootStateCopyWithImpl;
  @useResult
  $Res call({int currentTab});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res> implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._self, this._then);

  final RootState _self;
  final $Res Function(RootState) _then;

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTab = null,
  }) {
    return _then(_self.copyWith(
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _RootState implements RootState {
  const _RootState({required this.currentTab});

  @override
  final int currentTab;

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RootStateCopyWith<_RootState> get copyWith =>
      __$RootStateCopyWithImpl<_RootState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RootState &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentTab);

  @override
  String toString() {
    return 'RootState(currentTab: $currentTab)';
  }
}

/// @nodoc
abstract mixin class _$RootStateCopyWith<$Res>
    implements $RootStateCopyWith<$Res> {
  factory _$RootStateCopyWith(
          _RootState value, $Res Function(_RootState) _then) =
      __$RootStateCopyWithImpl;
  @override
  @useResult
  $Res call({int currentTab});
}

/// @nodoc
class __$RootStateCopyWithImpl<$Res> implements _$RootStateCopyWith<$Res> {
  __$RootStateCopyWithImpl(this._self, this._then);

  final _RootState _self;
  final $Res Function(_RootState) _then;

  /// Create a copy of RootState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTab = null,
  }) {
    return _then(_RootState(
      currentTab: null == currentTab
          ? _self.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

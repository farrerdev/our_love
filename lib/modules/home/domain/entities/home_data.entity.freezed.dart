// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_data.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeDataEntity {
  DateTime get firstDate;
  String get bgImagePath;
  String get firstAvatar;
  String get secondAvatar;

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeDataEntityCopyWith<HomeDataEntity> get copyWith =>
      _$HomeDataEntityCopyWithImpl<HomeDataEntity>(
          this as HomeDataEntity, _$identity);

  /// Serializes this HomeDataEntity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeDataEntity &&
            (identical(other.firstDate, firstDate) ||
                other.firstDate == firstDate) &&
            (identical(other.bgImagePath, bgImagePath) ||
                other.bgImagePath == bgImagePath) &&
            (identical(other.firstAvatar, firstAvatar) ||
                other.firstAvatar == firstAvatar) &&
            (identical(other.secondAvatar, secondAvatar) ||
                other.secondAvatar == secondAvatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstDate, bgImagePath, firstAvatar, secondAvatar);

  @override
  String toString() {
    return 'HomeDataEntity(firstDate: $firstDate, bgImagePath: $bgImagePath, firstAvatar: $firstAvatar, secondAvatar: $secondAvatar)';
  }
}

/// @nodoc
abstract mixin class $HomeDataEntityCopyWith<$Res> {
  factory $HomeDataEntityCopyWith(
          HomeDataEntity value, $Res Function(HomeDataEntity) _then) =
      _$HomeDataEntityCopyWithImpl;
  @useResult
  $Res call(
      {DateTime firstDate,
      String bgImagePath,
      String firstAvatar,
      String secondAvatar});
}

/// @nodoc
class _$HomeDataEntityCopyWithImpl<$Res>
    implements $HomeDataEntityCopyWith<$Res> {
  _$HomeDataEntityCopyWithImpl(this._self, this._then);

  final HomeDataEntity _self;
  final $Res Function(HomeDataEntity) _then;

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstDate = null,
    Object? bgImagePath = null,
    Object? firstAvatar = null,
    Object? secondAvatar = null,
  }) {
    return _then(_self.copyWith(
      firstDate: null == firstDate
          ? _self.firstDate
          : firstDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bgImagePath: null == bgImagePath
          ? _self.bgImagePath
          : bgImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      firstAvatar: null == firstAvatar
          ? _self.firstAvatar
          : firstAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      secondAvatar: null == secondAvatar
          ? _self.secondAvatar
          : secondAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _HomeDataEntity implements HomeDataEntity {
  const _HomeDataEntity(
      {required this.firstDate,
      required this.bgImagePath,
      required this.firstAvatar,
      required this.secondAvatar});
  factory _HomeDataEntity.fromJson(Map<String, dynamic> json) =>
      _$HomeDataEntityFromJson(json);

  @override
  final DateTime firstDate;
  @override
  final String bgImagePath;
  @override
  final String firstAvatar;
  @override
  final String secondAvatar;

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeDataEntityCopyWith<_HomeDataEntity> get copyWith =>
      __$HomeDataEntityCopyWithImpl<_HomeDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeDataEntityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeDataEntity &&
            (identical(other.firstDate, firstDate) ||
                other.firstDate == firstDate) &&
            (identical(other.bgImagePath, bgImagePath) ||
                other.bgImagePath == bgImagePath) &&
            (identical(other.firstAvatar, firstAvatar) ||
                other.firstAvatar == firstAvatar) &&
            (identical(other.secondAvatar, secondAvatar) ||
                other.secondAvatar == secondAvatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstDate, bgImagePath, firstAvatar, secondAvatar);

  @override
  String toString() {
    return 'HomeDataEntity(firstDate: $firstDate, bgImagePath: $bgImagePath, firstAvatar: $firstAvatar, secondAvatar: $secondAvatar)';
  }
}

/// @nodoc
abstract mixin class _$HomeDataEntityCopyWith<$Res>
    implements $HomeDataEntityCopyWith<$Res> {
  factory _$HomeDataEntityCopyWith(
          _HomeDataEntity value, $Res Function(_HomeDataEntity) _then) =
      __$HomeDataEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DateTime firstDate,
      String bgImagePath,
      String firstAvatar,
      String secondAvatar});
}

/// @nodoc
class __$HomeDataEntityCopyWithImpl<$Res>
    implements _$HomeDataEntityCopyWith<$Res> {
  __$HomeDataEntityCopyWithImpl(this._self, this._then);

  final _HomeDataEntity _self;
  final $Res Function(_HomeDataEntity) _then;

  /// Create a copy of HomeDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstDate = null,
    Object? bgImagePath = null,
    Object? firstAvatar = null,
    Object? secondAvatar = null,
  }) {
    return _then(_HomeDataEntity(
      firstDate: null == firstDate
          ? _self.firstDate
          : firstDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      bgImagePath: null == bgImagePath
          ? _self.bgImagePath
          : bgImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      firstAvatar: null == firstAvatar
          ? _self.firstAvatar
          : firstAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      secondAvatar: null == secondAvatar
          ? _self.secondAvatar
          : secondAvatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

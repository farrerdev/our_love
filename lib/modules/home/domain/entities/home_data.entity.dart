import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_love/modules/home/presentation/pages/home.view.dart';

part 'home_data.entity.freezed.dart';
part 'home_data.entity.g.dart';

@freezed
class HomeDataEntity with _$HomeDataEntity {
  const factory HomeDataEntity({
    required DateTime firstDate,
    required String bgImagePath,
    required String firstAvatar,
    required String secondAvatar,
  }) = _HomeDataEntity;

  factory HomeDataEntity.fromJson(Map<String, dynamic> json) =>
      _$HomeDataEntityFromJson(json);

  factory HomeDataEntity.empty() {
    return HomeDataEntity(
      firstDate: DateTime.now().subtract(const Duration(days: 1)

      ),
      firstAvatar: defaultPath,
      secondAvatar: defaultPath,
      bgImagePath: defaultPath,
    );
  }

  @override
  // TODO: implement bgImagePath
  String get bgImagePath => throw UnimplementedError();

  @override
  // TODO: implement firstAvatar
  String get firstAvatar => throw UnimplementedError();

  @override
  // TODO: implement firstDate
  DateTime get firstDate => throw UnimplementedError();

  @override
  // TODO: implement secondAvatar
  String get secondAvatar => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
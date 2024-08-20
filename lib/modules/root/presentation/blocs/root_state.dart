part of 'root_cubit.dart';

@freezed
class RootState with _$RootState {
  const factory RootState.initial(
      {@Default(BottomMenuEnum.home) int currentTab}) = _Initial;
}

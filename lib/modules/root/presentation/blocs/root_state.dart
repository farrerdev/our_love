part of 'root_cubit.dart';

@freezed
class RootState with _$RootState {
  const factory RootState(
      {required int currentTab}) = _RootState;

  factory RootState.initData() =>  RootState(
    currentTab: BottomMenuEnum.home,
  );

  @override
  // TODO: implement currentTab
  int get currentTab => throw UnimplementedError();
}

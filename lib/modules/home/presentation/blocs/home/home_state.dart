part of 'home_bloc.dart';

extension HomeStateX on HomeState {
  bool get isEdited => initData != data;

  int get totalDays => DateTime.now().difference(data!.firstDate).inDays + 1;

  String get totalDaysContent {
    if (totalDays == 1) return "$totalDays day";
    return "$totalDays days";
  }

double get nextMaxDays => (totalDays / 1000 + 1).toInt().toDouble() * 1000;
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required LoadStatus loadStatus,
    required HomeDataEntity initData,
    required HomeDataEntity data,
    required bool isEditing,
  }) = _HomeState;

  factory HomeState.initData() =>  HomeState(
        loadStatus: LoadStatus.loading,
        initData: HomeDataEntity.empty(),
        data: HomeDataEntity.empty(),
        isEditing: false,
      );
}

@freezed
abstract class ResponseStatus with _$ResponseStatus {
  const factory ResponseStatus({
    required FormzSubmissionStatus status,
    String? message,
  }) = _ResponseStatus;

  static const initial = ResponseStatus(
    status: FormzSubmissionStatus.initial,
  );
}

enum LoadStatus {
  loading,
  error,
  success;

  bool get isLoading => this == loading;

  bool get isError => this == error;

  bool get isSuccess => this == success;
}

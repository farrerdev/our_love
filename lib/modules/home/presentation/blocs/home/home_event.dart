part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

final class HomeInitialized extends HomeEvent {
  const HomeInitialized();

  @override
  List<Object> get props => [];
}

final class HomeEditModeChanged extends HomeEvent {
  const HomeEditModeChanged();

  @override
  List<Object> get props => [];
}

final class HomeAvatarChanged extends HomeEvent {
  final bool isFirst;
  final String path;

  const HomeAvatarChanged({
    required this.isFirst,
    required this.path,
  });

  @override
  List<Object> get props => [];
}
final class HomeBgImageChanged extends HomeEvent {
  final String path;

  const HomeBgImageChanged({
    required this.path,
  });

  @override
  List<Object> get props => [];
}

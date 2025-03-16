part of 'memories_cubit.dart';

@immutable
sealed class MemoriesState {}

final class MemoriesInitial extends MemoriesState {

}

final class MemoriesLoading extends MemoriesState {}

final class MemoriesError extends MemoriesState {
  final String? message;

  MemoriesError(this.message);
}

final class MemoriesLoaded extends MemoriesState {
  final MemoriesPagingEntity data;

  MemoriesLoaded(this.data);
}

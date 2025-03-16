import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:our_love/common/configs/usecase.dart';
import 'package:our_love/di/di.dart';
import 'package:our_love/modules/home/domain/entities/home_data.entity.dart';
import 'package:our_love/modules/home/domain/use_cases/home.use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initData()) {
    on<HomeInitialized>(_onHomeInitialized);
    on<HomeEditModeChanged>(_onHomeEditModeChanged);
    on<HomeAvatarChanged>(_onHomeAvatarChanged);
    on<HomeBgImageChanged>(_onHomeBgImageChanged);
    _onInit();
  }

  final GetHomeDataUseCase _getHomeDataUseCase = getIt.get();

  FutureOr<void> _onHomeEditModeChanged(
    HomeEditModeChanged event,
    Emitter<HomeState> emit,
  ) async {
    final newIsEditing = !state.isEditing;
    emit(
      state.copyWith(
        isEditing: newIsEditing,
        data:  state.initData,
      ),
    );
  }

  FutureOr<void> _onHomeInitialized(
    HomeInitialized event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(loadStatus: LoadStatus.loading),
    );
    final res = await _getHomeDataUseCase.call(NoParams());
    res.fold((l) {
      emit(
        state.copyWith(loadStatus: LoadStatus.error),
      );
    }, (r) {
      emit(
        state.copyWith(
          loadStatus: LoadStatus.success,
          data: r,
        ),
      );
    });
  }

  void _onInit() {
    add(const HomeInitialized());
  }

  FutureOr<void> _onHomeAvatarChanged(
      HomeAvatarChanged event, Emitter<HomeState> emit) {
    // emit(
    //   state.copyWith(
    //     data: state.data.copyWith(
    //       firstAvatar: event.isFirst ? event.path : null,
    //       secondAvatar: event.isFirst ? null : event.path,
    //     ),
    //   ),
    // );
  }

  FutureOr<void> _onHomeBgImageChanged(
      HomeBgImageChanged event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        data: state.data!.copyWith(
          bgImagePath: event.path,
        ),
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:our_love/modules/memories/domain/entities/memories_data.entity.dart';
import 'package:our_love/modules/memories/presentation/pages/submit_memory.view.dart';
import 'package:our_love/modules/memories/presentation/view_models/submit_memory.vm.dart';

part 'submit_memory_state.dart';

part 'submit_memory_cubit.freezed.dart';
class SubmitMemoryCubit extends Cubit<SubmitMemoryState> {
  SubmitMemoryCubit()
      : super(
          SubmitMemoryState.init()
        );

  setDate(DateTime picked) {
    emit(state.copyWith(
      memory: state.memory.copyWith(
        date: picked,
      )
    ));
  }
}

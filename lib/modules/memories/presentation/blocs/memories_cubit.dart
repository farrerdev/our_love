import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:our_love/common/entities/base_data.entity.dart';
import 'package:our_love/di/di.dart';
import 'package:our_love/modules/memories/domain/entities/memories_data.entity.dart';
import 'package:our_love/modules/memories/domain/use_cases/memories.use_case.dart';

part 'memories_state.dart';

class MemoriesCubit extends Cubit<MemoriesState> {
  MemoriesCubit() : super(MemoriesInitial());

  final GetMemoriesUseCase getMemoriesUseCase = getIt.get();

  Future<void> getMemories() async {
    emit(MemoriesLoading());
    try {
      final res = await getMemoriesUseCase.call(PagingEntity());
      res.fold((l) {
        emit(MemoriesError("Failed to load memories"));
      }, (r) {
        emit(MemoriesLoaded(r));
      });
    } catch (e) {
      emit(MemoriesError("Failed to load memories"));
    }
  }

}

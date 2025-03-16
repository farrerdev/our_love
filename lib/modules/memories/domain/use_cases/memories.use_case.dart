import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:our_love/common/entities/base_data.entity.dart';
import 'package:our_love/modules/memories/domain/entities/memories_data.entity.dart';
import 'package:our_love/modules/memories/domain/repositories/memories.repository.dart';


@injectable
class GetMemoriesUseCase implements UseCase<MemoriesPagingEntity, PagingEntity> {
  final IMemoriesRepository repository;

  GetMemoriesUseCase({required this.repository});

  @override
  Future<Either<Failure, MemoriesPagingEntity>> call(PagingEntity param) {
    return repository.getMemories(param);
  }
}

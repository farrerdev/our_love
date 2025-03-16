import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:our_love/common/entities/base_data.entity.dart';
import 'package:our_love/modules/memories/domain/entities/memories_data.entity.dart';

abstract class IMemoriesRepository {
  Future<Either<Failure, MemoriesPagingEntity>> getMemories(PagingEntity param);
}

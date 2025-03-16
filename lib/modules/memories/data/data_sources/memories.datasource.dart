import 'package:our_love/common/configs/usecase.dart';
import 'package:our_love/common/entities/base_data.entity.dart';
import 'package:our_love/common/utils/exception.util.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:our_love/modules/memories/domain/entities/memories_data.entity.dart';

abstract class IMemoriesDataSource {
  Future<Either<Failure, MemoriesPagingEntity>> getMemories(PagingEntity param);
}

@Injectable(as: IMemoriesDataSource)
class MemoriesDataSource implements IMemoriesDataSource {
  @override
  Future<Either<Failure, MemoriesPagingEntity>> getMemories(PagingEntity param) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return Right(
        MemoriesPagingEntity(
          pageNo: 1,
          pageSize: 20,
          totalPages: 2,
          totalRecords: 30,
        ),
      );
    } catch (e) {
      return Left(ExceptionUtil.failure(e));
    }
  }
}

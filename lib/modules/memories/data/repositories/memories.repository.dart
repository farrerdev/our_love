import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:our_love/common/entities/base_data.entity.dart';
import 'package:our_love/modules/memories/data/data_sources/memories.datasource.dart';
import 'package:our_love/modules/memories/domain/entities/memories_data.entity.dart';
import 'package:our_love/modules/memories/domain/repositories/memories.repository.dart';

@Injectable(as: IMemoriesRepository)
class MemoriesRepository implements IMemoriesRepository {
  final IMemoriesDataSource datasource;

  MemoriesRepository({required this.datasource});


  @override

  @override
  Future<Either<Failure, MemoriesPagingEntity>> getMemories(PagingEntity param) {
    return  datasource.getMemories(param);

  }
}

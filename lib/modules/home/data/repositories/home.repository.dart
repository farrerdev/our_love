import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:our_love/modules/home/data/data_sources/home.datasource.dart';
import 'package:our_love/modules/home/domain/entities/home_data.entity.dart';
import 'package:our_love/modules/home/domain/repositories/home.repository.dart';

@Injectable(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final IHomeDataSource authDataSource;

  HomeRepository({required this.authDataSource});


  @override
  Future<Either<Failure, HomeDataEntity>> getHomeData() {
    return  authDataSource.getHomeData();
  }
}

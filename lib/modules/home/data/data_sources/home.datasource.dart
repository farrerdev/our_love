import 'package:our_love/common/configs/usecase.dart';
import 'package:our_love/common/utils/exception.util.dart';
import 'package:our_love/modules/home/domain/entities/home_data.entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IHomeDataSource {
  Future<Either<Failure, HomeDataEntity>> getHomeData();
}

@Injectable(as: IHomeDataSource)
class UserDataSource implements IHomeDataSource {
  @override
  Future<Either<Failure, HomeDataEntity>> getHomeData() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return  Right(HomeDataEntity.empty());
    } catch (e) {
      return Left(ExceptionUtil.failure(e));
    }
  }
}

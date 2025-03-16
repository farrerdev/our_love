import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:our_love/modules/home/domain/entities/home_data.entity.dart';

abstract class IHomeRepository {
  Future<Either<Failure, HomeDataEntity>> getHomeData();
}

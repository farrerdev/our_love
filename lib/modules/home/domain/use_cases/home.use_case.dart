import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:our_love/modules/home/domain/entities/home_data.entity.dart';
import 'package:our_love/modules/home/domain/repositories/home.repository.dart';


@injectable
class GetHomeDataUseCase implements UseCase<HomeDataEntity, NoParams> {
  final IHomeRepository repository;

  GetHomeDataUseCase({required this.repository});

  @override
  Future<Either<Failure, HomeDataEntity>> call(NoParams noParams) {
    return repository.getHomeData();
  }
}

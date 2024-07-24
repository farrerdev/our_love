import 'package:our_love/common/configs/usecase.dart';
import 'package:our_love/modules/auth/domain/repositories/auth.repository.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:our_love/modules/auth/domain/entities/user.entity.dart';

@injectable
class UserLoginUseCase
    implements UseCase<UserLoginResponseEntity, UserLoginCredentialsEntity> {
  final IAuthRepository repository;

  UserLoginUseCase({required this.repository});

  @override
  Future<Either<Failure, UserLoginResponseEntity>> call(
      UserLoginCredentialsEntity user) {
    return repository.loginUser(user);
  }
}

@injectable
class GetProfileUseCase implements UseCase<UserEntity, NoParams> {
  final IAuthRepository repository;

  GetProfileUseCase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> call(NoParams noParams) {
    return repository.getProfile();
  }
}

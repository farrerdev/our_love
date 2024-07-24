import 'package:our_love/common/configs/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:our_love/modules/auth/domain/entities/user.entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, UserLoginResponseEntity>> loginUser(
      UserLoginCredentialsEntity user);

  Future<Either<Failure, UserEntity>> getProfile();
}

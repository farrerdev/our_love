import 'package:our_love/common/configs/endpoints.dart';
import 'package:our_love/common/configs/usecase.dart';
import 'package:our_love/common/utils/exception.util.dart';
import 'package:our_love/modules/auth/domain/entities/user.entity.dart';
import 'package:our_love/services/http/http.service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthDataSource {
  Future<Either<Failure, UserLoginResponseEntity>> loginUser(
      UserLoginCredentialsEntity user);

  Future<Either<Failure, UserEntity>> getProfile();


}

@Injectable(as: IAuthDataSource)
class UserDataSource implements IAuthDataSource {


  @override
  Future<Either<Failure, UserLoginResponseEntity>> loginUser(
      UserLoginCredentialsEntity user) async {
    try {
      final response = await HttpService.instance.post(Endpoints.LOGIN, data: {
        'isKeepSignedIn': true,
        'username': user.username,
        'password': user.password,
        'timezoneOffset': DateTime.now().timeZoneOffset.inHours,
      });
      return Right(UserLoginResponseEntity.fromJson(response.body));
    } catch (e) {
      return Left(ExceptionUtil.failure(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getProfile() async {
    try {
      final response = await HttpService.instance.get(Endpoints.USER_PROFILE);
      return Right(UserEntity.fromJson(response.body));
    } catch (e) {
      return Left(ExceptionUtil.failure(e));
    }
  }
}

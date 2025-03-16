// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:our_love/modules/auth/data/data_sources/auth.datasource.dart'
    as _i683;
import 'package:our_love/modules/auth/data/repositories/auth.repository.dart'
    as _i100;
import 'package:our_love/modules/auth/domain/repositories/auth.repository.dart'
    as _i1052;
import 'package:our_love/modules/auth/domain/use_cases/auth.use_case.dart'
    as _i170;
import 'package:our_love/modules/home/data/data_sources/home.datasource.dart'
    as _i51;
import 'package:our_love/modules/home/data/repositories/home.repository.dart'
    as _i963;
import 'package:our_love/modules/home/domain/repositories/home.repository.dart'
    as _i646;
import 'package:our_love/modules/home/domain/use_cases/home.use_case.dart'
    as _i317;
import 'package:our_love/modules/memories/data/data_sources/memories.datasource.dart'
    as _i935;
import 'package:our_love/modules/memories/data/repositories/memories.repository.dart'
    as _i914;
import 'package:our_love/modules/memories/domain/repositories/memories.repository.dart'
    as _i940;
import 'package:our_love/modules/memories/domain/use_cases/memories.use_case.dart'
    as _i934;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i935.IMemoriesDataSource>(() => _i935.MemoriesDataSource());
    gh.factory<_i683.IAuthDataSource>(() => _i683.UserDataSource());
    gh.factory<_i51.IHomeDataSource>(() => _i51.UserDataSource());
    gh.factory<_i1052.IAuthRepository>(() =>
        _i100.AuthRepository(authDataSource: gh<_i683.IAuthDataSource>()));
    gh.factory<_i940.IMemoriesRepository>(() =>
        _i914.MemoriesRepository(datasource: gh<_i935.IMemoriesDataSource>()));
    gh.factory<_i934.GetMemoriesUseCase>(() =>
        _i934.GetMemoriesUseCase(repository: gh<_i940.IMemoriesRepository>()));
    gh.factory<_i646.IHomeRepository>(
        () => _i963.HomeRepository(authDataSource: gh<_i51.IHomeDataSource>()));
    gh.factory<_i170.UserLoginUseCase>(
        () => _i170.UserLoginUseCase(repository: gh<_i1052.IAuthRepository>()));
    gh.factory<_i170.GetProfileUseCase>(() =>
        _i170.GetProfileUseCase(repository: gh<_i1052.IAuthRepository>()));
    gh.factory<_i317.GetHomeDataUseCase>(() =>
        _i317.GetHomeDataUseCase(repository: gh<_i646.IHomeRepository>()));
    return this;
  }
}

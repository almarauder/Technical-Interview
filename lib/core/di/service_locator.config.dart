import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/users/data/datasources/user_remote_datasource.dart'
    as _i655;
import '../../features/users/data/repositories/user_repository_impl.dart'
    as _i409;
import '../../features/users/domain/repositories/user_repository.dart'
    as _i819;
import '../../features/users/domain/usecases/get_users_usecase.dart' as _i770;
import '../../features/users/presentation/bloc/users_bloc.dart' as _i481;

extension GetItInjectableX on _i174.GetIt {
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i655.UserRemoteDataSource>(
        () => _i655.UserRemoteDataSource(gh<_i361.Dio>()));
    gh.lazySingleton<_i819.UserRepository>(
        () => _i409.UserRepositoryImpl(gh<_i655.UserRemoteDataSource>()));
    gh.singleton<_i770.GetUsersUseCase>(
        () => _i770.GetUsersUseCase(gh<_i819.UserRepository>()));
    gh.factory<_i481.UsersBloc>(
        () => _i481.UsersBloc(gh<_i770.GetUsersUseCase>()));
    return this;
  }
}
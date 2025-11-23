import 'package:injectable/injectable.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

@singleton
class GetUsersUseCase {
  final UserRepository _repository;

  const GetUsersUseCase(this._repository);

  ResultFuture<List<UserEntity>> call() {
    return _repository.getUsers();
  }
}
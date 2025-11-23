import '../../../../core/utils/typedef.dart';
import '../entities/user_entity.dart';

abstract class UserRepository {
  ResultFuture<List<UserEntity>> getUsers();
}
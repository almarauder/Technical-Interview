import '../../domain/entities/user_entity.dart';
import '../models/user_model.dart';

extension UserModelX on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      phone: phone,
    );
  }
}
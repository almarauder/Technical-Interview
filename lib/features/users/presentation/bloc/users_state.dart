import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'users_state.freezed.dart';

enum UsersStatus { initial, loading, success, error }

@freezed
sealed class UsersState with _$UsersState {
  const factory UsersState({
    @Default(UsersStatus.initial) UsersStatus status,
    @Default([]) List<UserEntity> users,
    String? errorMessage,
  }) = _UsersState;
}
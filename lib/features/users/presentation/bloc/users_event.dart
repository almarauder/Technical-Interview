import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_event.freezed.dart';

@freezed
sealed class UsersEvent with _$UsersEvent {
  const factory UsersEvent.loadUsers() = LoadUsers;
  const factory UsersEvent.refreshUsers() = RefreshUsers;
}
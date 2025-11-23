import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_users_usecase.dart';
import 'users_event.dart';
import 'users_state.dart';

@injectable
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final GetUsersUseCase _getUsersUseCase;

  UsersBloc(this._getUsersUseCase) : super(const UsersState()) {
    on<LoadUsers>(_onLoadUsers);
    on<RefreshUsers>(_onRefreshUsers);
  }

  Future<void> _onLoadUsers(
      LoadUsers event, Emitter<UsersState> emit) async {
    emit(state.copyWith(status: UsersStatus.loading));
    final result = await _getUsersUseCase();
    result.fold(
      (failure) => emit(state.copyWith(
        status: UsersStatus.error,
        errorMessage: failure.message,
      )),
      (users) => emit(state.copyWith(
        status: UsersStatus.success,
        users: users,
        errorMessage: null,
      )),
    );
  }

  Future<void> _onRefreshUsers(
      RefreshUsers event, Emitter<UsersState> emit) async {
    add(const UsersEvent.loadUsers());
  }
}

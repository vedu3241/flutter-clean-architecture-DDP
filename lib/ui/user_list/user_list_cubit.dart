import 'package:clean_archi/domain/usecases/get_users_usecase.dart';
import 'package:clean_archi/ui/user_list/user_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListCubit extends Cubit<UserListState> {
  // Now using the usecase instead of repository directly
  final GetUsersUsecase _getUsersUsecase; // dependency injection!

  UserListCubit(this._getUsersUsecase) : super(UserListState.initial());

  Future<void> fetchUsers() async {
    debugPrint('fetchUsers() started');
    emit(state.copyWith(isLoading: true, error: null));
    // Call the usecase (using the call() method)
    final users = await _getUsersUsecase();

    users.fold((error) {
      //error part(left)

      //show dialogue error on UI
      //after we add navigation layer
      emit(state.copyWith(error: error.errorMessage));
    }, (users) {
      //success part(right)
      emit(
        state.copyWith(users: users, isLoading: false),
      );
    });
  }
}

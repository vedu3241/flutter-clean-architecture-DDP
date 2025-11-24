import 'package:clean_archi/domain/entities/user.dart';

class UserListState {
  final List<User> users;
  final bool isLoading;
  final String? error;

  const UserListState(
      {required this.isLoading, required this.users, this.error});

  factory UserListState.initial() =>
      const UserListState(isLoading: false, users: []);

  UserListState copyWith({List<User>? users, bool? isLoading, String? error}) =>
      UserListState(
        isLoading: isLoading ?? this.isLoading,
        users: users ?? this.users,
        error: error ?? this.error,
      );
}

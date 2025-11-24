import 'package:clean_archi/domain/entities/user.dart';
import 'package:clean_archi/domain/failures/users_list_failures.dart';
import 'package:dartz/dartz.dart';

abstract class UsersRepository {
  Future<Either<UserListFailure, List<User>>> getUsers();
}

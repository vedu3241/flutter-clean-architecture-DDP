import 'package:clean_archi/domain/entities/user.dart';
import 'package:clean_archi/domain/failures/users_list_failures.dart';
import 'package:clean_archi/domain/repository/users_repository.dart';
import 'package:dartz/dartz.dart';

/* 
so this is another implementation of abstract class "UsersRepository" 
to use this , you just need to register it in getIt

shows the eg of why do we create abstract class.
*/
class MockUsersRepository implements UsersRepository {
  @override
  Future<Either<UserListFailure, List<User>>> getUsers() async {
    return right([
      User(
          id: 123,
          name: "Vedant",
          username: "username",
          email: "email",
          phone: "phone",
          website: "website"),
      User(
          id: 321,
          name: "Abhishek",
          username: "username",
          email: "email",
          phone: "phone",
          website: "website")
    ]);
  }
}

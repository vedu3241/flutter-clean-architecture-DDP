import 'package:clean_archi/domain/entities/user.dart';
import 'package:clean_archi/domain/failures/users_list_failures.dart';
import 'package:clean_archi/domain/repository/users_repository.dart';
import 'package:dartz/dartz.dart';

class GetUsersUsecase {
  // The usecase depends on the repository (dependency injection)
  final UsersRepository _usersRepository;

  GetUsersUsecase(this._usersRepository);

  // The call method is the main method that executes the usecase
  // This is a common pattern - makes the class callable like a function
  Future<Either<UserListFailure, List<User>>> call() async {
    return await _usersRepository.getUsers();
  }
}

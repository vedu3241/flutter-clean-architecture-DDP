import 'dart:convert';

import 'package:clean_archi/data/user_json.dart';
import 'package:clean_archi/domain/entities/user.dart';
import 'package:clean_archi/domain/failures/users_list_failures.dart';
import 'package:clean_archi/domain/repository/users_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class RestApiUsersRepository implements UsersRepository {
  @override
  Future<Either<UserListFailure, List<User>>> getUsers() async {
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
      var response = await http.get(url);

      var list = jsonDecode(response.body) as List;
      //status code handling
      //json parsing handling

      final users = list.map((e) => UserJson.fromJson(e).toDomain()).toList();

      return right(users);
    } catch (e) {
      return left(UserListFailure(errorMessage: e.toString()));
    }
  }
}

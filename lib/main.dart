import 'package:clean_archi/domain/repository/users_repository.dart';
import 'package:clean_archi/ui/user_list/user_list_cubit.dart';
import 'package:clean_archi/ui/user_list/user_list_page.dart';
import 'package:clean_archi/data/rest_api_users_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void main() {
  getIt.registerSingleton<UsersRepository>(RestApiUsersRepository());
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('main() started');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserListCubit(getIt())..fetchUsers()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: UserListPage(), // make this const
    );
  }
}

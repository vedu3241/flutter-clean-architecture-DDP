import 'package:clean_archi/ui/user_details/user_details_page.dart';
import 'package:clean_archi/ui/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'user_list_cubit.dart';
import 'user_list_state.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocBuilder(
        bloc: BlocProvider.of<UserListCubit>(context),
        builder: (context, state) {
          final userState = state as UserListState;

          if (userState.error != null) {
            return Center(
              child: Text('Error: ${userState.error}'),
            );
          }
          return userState.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: ListView(
                      children: userState.users
                          .map(
                            (user) => UserCard(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      UserDetailsPage(user: user),
                                ),
                              ),
                              user: user,
                            ),
                          )
                          .toList()),
                );
        },
      )),
    );
  }
}

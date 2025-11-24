import 'package:clean_archi/domain/entities/user.dart';
import 'package:flutter/material.dart';

class UserDetailsPage extends StatefulWidget {
  final User user;
  const UserDetailsPage({super.key, required this.user});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListTile(
          title: Text(widget.user.name),
          subtitle: Text(widget.user.email),
        ),
      ),
    );
  }
}

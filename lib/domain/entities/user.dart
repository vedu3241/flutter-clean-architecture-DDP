/*
1. Separation of concerns

UserJson belongs to the data layer (models used to decode API JSON).

User belongs to the domain layer (business logic)
*/

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  const User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  /// we use this empty constructor to assign or check empty
  const User.empty()
      : id = 000,
        name = "",
        username = "",
        email = "",
        phone = "",
        website = "";

  //now based on these fields two User objects are compared for equality using Equatable package
  @override
  List<Object?> get props => [
        id,
        name,
        username,
        email,
        phone,
        website,
      ];
}

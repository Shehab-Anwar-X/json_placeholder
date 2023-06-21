import 'package:equatable/equatable.dart';

import 'user_address.dart';
import 'user_company.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String username;
  final String email;
  final UserAddress address;
  final String phone;
  final String website;
  final UserCompany company;

  const User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      username,
      email,
      address,
      phone,
      website,
      company,
    ];
  }
}

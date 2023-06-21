/// This is the import statement for the `Equatable` library
import 'package:equatable/equatable.dart';

/// This is the import statement for the `UserAddress` class
import 'user_address.dart';

/// This is the import statement for the `UserCompany` class
import 'user_company.dart';

/// The `User` class is used to model a user.
class User extends Equatable {
  
  /// The `id` field represents the unique identifier for the user.
  final int id;
  
  /// The `name` field represents the name of the user.
  final String name;
  
  /// The `username` field represents the username of the user.
  final String username;
  
  /// The `email` field represents the email of the user.
  final String email;
  
  /// The `address` field represents the address of the user.
  final UserAddress address;
  
  /// The `phone` field represents the phone number of the user.
  final String phone;
  
  /// The `website` field represents the website of the user.
  final String website;
  
  /// The `company` field represents the company that the user works for.
  final UserCompany company;

  /// The `User` constructor creates a new instance of the `User` class.
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
  
  /// Overrides the default `props` method and returns a list of objects that represent the `User` object's properties.
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
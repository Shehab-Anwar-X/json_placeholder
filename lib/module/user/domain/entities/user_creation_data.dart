import 'package:equatable/equatable.dart';

import 'user_address.dart';
import 'user_company.dart';

/// UserCreationData represents the data needed to create a new user.
/// This class extends the Equatable class to enable equality comparisons between objects.
class UserCreationData extends Equatable {
  /// The user's name.
  final String name;

  /// The user's username.
  final String username;

  /// The user's email.
  final String email;

  /// The user's address.
  final UserAddress address;

  /// The user's phone number.
  final String phone;

  /// The user's website URL.
  final String website;

  /// The user's company.
  final UserCompany company;

  /// Constructs a UserCreationData instance.
  ///
  /// [name] is the user's name.
  ///
  /// [username] is the user's username.
  ///
  /// [email] is the user's email.
  ///
  /// [address] is the user's address.
  ///
  /// [phone] is the user's phone number.
  ///
  /// [website] is the user's website URL.
  ///
  /// [company] is the user's company.
  const UserCreationData({
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
    /// Returns a list of properties to be used for comparison by the Equatable class.
    return [
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

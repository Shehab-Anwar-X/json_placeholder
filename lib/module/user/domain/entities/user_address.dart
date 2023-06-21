import 'package:equatable/equatable.dart';

/// Importing the [UserAddressGeo] class which represents the geographic details
/// of a user's address.
import 'user_address_geo.dart';

/// A class representing the address details of a user.
///
/// This class extends the [Equatable] class for easy comparison of objects.
class UserAddress extends Equatable {
  /// A [String] representing the street/address line of the user's address.
  final String street;

  /// A [String] representing the suite/Apt. number of the user's address.
  final String suite;

  /// A [String] representing the city/town of the user's address.
  final String city;

  /// A [String] representing the zipcode/postal code of the user's address.
  final String zipcode;

  /// An instance of [UserAddressGeo] representing the geographic details of the
  /// user's address.
  final UserAddressGeo geo;

  /// Constructor for the [UserAddress] class.
  ///
  /// Requires [street], [suite], [city], [zipcode], and [geo] to be provided.
  const UserAddress({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  @override
  List<Object?> get props {
    return [
      street,
      suite,
      city,
      zipcode,
      geo,
    ];
  }
}

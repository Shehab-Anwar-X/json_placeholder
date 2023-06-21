import 'package:equatable/equatable.dart';

import 'user_address_geo.dart';

class UserAddress extends Equatable {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final UserAddressGeo geo;

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

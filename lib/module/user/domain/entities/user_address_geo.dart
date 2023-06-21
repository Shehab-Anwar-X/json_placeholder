/// A class that represents the geographical information of a user's address.
///
/// Each [UserAddressGeo] object contains two required fields:
/// * [lat]: A [String] value representing the latitude of the user's address.
/// * [lng]: A [String] value representing the longitude of the user's address.
///
/// This object extends the [Equatable] class to allow for easy comparisons of
/// equality between two [UserAddressGeo] objects.
import 'package:equatable/equatable.dart';

class UserAddressGeo extends Equatable {
  /// The latitude of the user's address.
  final String lat;
  
  /// The longitude of the user's address.
  final String lng;

  /// Creates a new [UserAddressGeo] object with the specified [lat] and [lng] values.
  ///
  /// Both [lat] and [lng] are required fields and must not be null.
  const UserAddressGeo({
    required this.lat,
    required this.lng,
  });

  @override
  List<Object?> get props {
    return [
      lat,
      lng,
    ];
  }
}
/// An abstract class containing keys for a user's address geographical information.
///
/// This class provides two static constants `lat` and `lng` that represent
/// the latitude and longitude of an address respectively. It also provides a
/// static method `toList()` that returns a list of all keys in this class.
abstract class UserAddressGeoKeys {
  const UserAddressGeoKeys();

  /// A static constant representing the latitude of an address.
  static const lat = 'lat';

  /// A static constant representing the longitude of an address.
  static const lng = 'lng';

  /// Returns a list of all keys in this class.
  ///
  /// This method returns a list of type `List<String>` that contains all keys
  /// in this class, i.e., `lat` and `lng`.
  static List<String> toList() {
    return <String>[
      lat,
      lng,
    ];
  }
}

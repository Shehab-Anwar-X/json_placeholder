/// This abstract class represents the keys used to access different elements of a user address.
abstract class UserAddressKeys {
  const UserAddressKeys();

  /// A constant string representing the street value of a user address.
  static const street = 'street';

  /// A constant string representing the suite value of a user address.
  static const suite = 'suite';

  /// A constant string representing the city value of a user address.
  static const city = 'city';

  /// A constant string representing the zipcode value of a user address.
  static const zipcode = 'zipcode';

  /// A constant string representing the geo value of a user address.
  static const geo = 'geo';

  /// A static method that returns a list of all the available user address keys.
  static List<String> toList() {
    return <String>[
      street,
      suite,
      city,
      zipcode,
      geo,
    ];
  }
}

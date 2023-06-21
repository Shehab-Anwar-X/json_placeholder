abstract class UserAddressKeys {
  const UserAddressKeys();

  static const street = 'street';
  static const suite = 'suite';
  static const city = 'city';
  static const zipcode = 'zipcode';
  static const geo = 'geo';

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

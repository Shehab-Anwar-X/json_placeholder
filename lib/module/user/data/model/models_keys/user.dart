/// This abstract class serves as a blueprint for keys used to access user details
abstract class UserKeys {
  const UserKeys();

  /// The key for the `id` field in user details
  static const id = 'id';

  /// The key for the `name` field in user details
  static const name = 'name';

  /// The key for the `username` field in user details
  static const username = 'username';

  /// The key for the `email` field in user details
  static const email = 'email';

  /// The key for the `address` field in user details
  static const address = 'address';

  /// The key for the `phone` field in user details
  static const phone = 'phone';

  /// The key for the `website` field in user details
  static const website = 'website';

  /// The key for the `company` field in user details
  static const company = 'company';

  /// Returns a list of all the keys in the user details object
  static List<String> toList() {
    return <String>[
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
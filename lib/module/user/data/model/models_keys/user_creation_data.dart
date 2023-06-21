/// A class that represents the keys for User Creation Data.
abstract class UserCreationDataKeys {
  const UserCreationDataKeys();

  /// The key for the User's name.
  static const name = 'name';

  /// The key for the User's username.
  static const username = 'username';

  /// The key for the User's email.
  static const email = 'email';

  /// The key for the User's address.
  static const address = 'address';

  /// The key for the User's phone number.
  static const phone = 'phone';

  /// The key for the User's website.
  static const website = 'website';

  /// The key for the User's company name.
  static const company = 'company';

  /// Converts the keys into a list of strings.
  static List<String> toList() {
    return <String>[
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

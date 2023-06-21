abstract class UserKeys {
  const UserKeys();

  static const id = 'id';
  static const name = 'name';
  static const username = 'username';
  static const email = 'email';
  static const address = 'address';
  static const phone = 'phone';
  static const website = 'website';
  static const company = 'company';

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

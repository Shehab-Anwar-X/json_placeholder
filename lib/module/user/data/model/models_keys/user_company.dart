/// An abstract class that represents the keys of a user's company
abstract class UserCompanyKeys {
  const UserCompanyKeys();

  /// A key for the name of the user's company
  static const name = 'name';

  /// A key for the catch phrase of the user's company
  static const catchPhrase = 'catch_phrase';

  /// A key for the bs of the user's company
  static const bs = 'bs';

  /// A method to return a list of all the company keys
  static List<String> toList() {
    return <String>[
      name,
      catchPhrase,
      bs,
    ];
  }
}

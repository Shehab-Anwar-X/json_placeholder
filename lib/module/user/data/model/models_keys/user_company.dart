abstract class UserCompanyKeys {
  const UserCompanyKeys();
  
  static const name = 'name';
  static const catchPhrase = 'catch_phrase';
  static const bs = 'bs';

  static List<String> toList() {
    return <String>[
      name,
      catchPhrase,
      bs,
    ];
  }
}

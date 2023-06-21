/// A model class that represents a company associated with a user.
///
/// Each instance of this class contains the name, catch phrase, and bs of a company.
///
/// To create an instance of this class, pass the following parameters into the constructor:
/// - [name] (required): The name of the company.
/// - [catchPhrase] (required): The catch phrase of the company.
/// - [bs] (required): The bs of the company.
///
/// Example usage:
/// ```
/// final userCompany = UserCompany(name: 'Some Company', catchPhrase: 'Some Catch Phrase', bs: 'Some BS');
/// ```
import 'package:equatable/equatable.dart';

class UserCompany extends Equatable {
  final String name;
  final String catchPhrase;
  final String bs;

  /// Creates an instance of UserCompany.
  const UserCompany({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  @override
  List<Object?> get props {
    return [
      name,
      catchPhrase,
      bs,
    ];
  }
}

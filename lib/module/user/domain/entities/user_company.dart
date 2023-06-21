import 'package:equatable/equatable.dart';

class UserCompany extends Equatable {
  final String name;
  final String catchPhrase;
  final String bs;

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

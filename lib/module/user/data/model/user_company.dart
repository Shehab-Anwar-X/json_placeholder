import 'dart:convert';

import 'models_keys/user_company.dart';
import '../../domain/entities/user_company.dart';

class UserCompanySerializable extends UserCompany {
  const UserCompanySerializable({
    required super.name,
    required super.catchPhrase,
    required super.bs,
  });

  UserCompanySerializable copyWith({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    return UserCompanySerializable(
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }

  factory UserCompanySerializable.fromJson(String str) {
    return UserCompanySerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory UserCompanySerializable.fromMap(Map<String, dynamic> json) {
    return UserCompanySerializable(
      name: json[UserCompanyKeys.name] as String,
      catchPhrase: json[UserCompanyKeys.catchPhrase] as String,
      bs: json[UserCompanyKeys.bs] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserCompanyKeys.name: name,
      UserCompanyKeys.catchPhrase: catchPhrase,
      UserCompanyKeys.bs: bs,
    };
  }
}

abstract class UserCompanyAdapter {
  const UserCompanyAdapter();

  static UserCompanySerializable serializableModelFromUserCompany({
    required UserCompany model,
  }) {
    return UserCompanySerializable(
      name: model.name,
      catchPhrase: model.catchPhrase,
      bs: model.bs,
    );
  }
}

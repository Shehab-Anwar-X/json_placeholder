import 'dart:convert';

import 'models_keys/user.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/user_address.dart';
import '../../domain/entities/user_company.dart';
import 'user_address.dart';
import 'user_company.dart';

class UserSerializable extends User {
  const UserSerializable({
    required super.id,
    required super.name,
    required super.username,
    required super.email,
    required super.address,
    required super.phone,
    required super.website,
    required super.company,
  });

  UserSerializable copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    UserAddress? address,
    String? phone,
    String? website,
    UserCompany? company,
  }) {
    return UserSerializable(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
    );
  }

  factory UserSerializable.fromJson(String str) {
    return UserSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory UserSerializable.fromMap(Map<String, dynamic> json) {
    return UserSerializable(
      id: json[UserKeys.id] as int,
      name: json[UserKeys.name] as String,
      username: json[UserKeys.username] as String,
      email: json[UserKeys.email] as String,
      address: UserAddressSerializable.fromMap(
        Map<String, dynamic>.from(json[UserKeys.address] as Map),
      ),
      phone: json[UserKeys.phone] as String,
      website: json[UserKeys.website] as String,
      company: UserCompanySerializable.fromMap(
        Map<String, dynamic>.from(json[UserKeys.company] as Map),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserKeys.id: id,
      UserKeys.name: name,
      UserKeys.username: username,
      UserKeys.email: email,
      UserKeys.address: UserAddressAdapter.serializableModelFromUserAddress(
        model: address,
      ).toMap(),
      UserKeys.phone: phone,
      UserKeys.website: website,
      UserKeys.company: UserCompanyAdapter.serializableModelFromUserCompany(
        model: company,
      ).toMap(),
    };
  }
}

abstract class UserAdapter {
  const UserAdapter();

  static UserSerializable serializableModelFromUser({
    required User model,
  }) {
    return UserSerializable(
      id: model.id,
      name: model.name,
      username: model.username,
      email: model.email,
      address: model.address,
      phone: model.phone,
      website: model.website,
      company: model.company,
    );
  }
}

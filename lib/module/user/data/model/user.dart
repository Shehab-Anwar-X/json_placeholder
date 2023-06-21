/// This file contains the definition of the class `UserSerializable` and the abstract class `UserAdapter`.
/// The `UserSerializable` class extends the `User` entity and is responsible for serializing/deserializing the `User` entity
/// to/from JSON. The `UserAdapter` class defines a static method that returns an instance of `UserSerializable` from an instance of `User`.

import 'dart:convert';

import 'models_keys/user.dart';
import '../../domain/entities/user.dart';
import '../../domain/entities/user_address.dart';
import '../../domain/entities/user_company.dart';
import 'user_address.dart';
import 'user_company.dart';

/// This class extends the `User` entity and is responsible for serializing/deserializing the `User` entity to/from JSON.
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

  /// Returns a new instance of `UserSerializable` with updated values.
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

  /// Returns a new instance of `UserSerializable` from a JSON string.
  factory UserSerializable.fromJson(String str) {
    return UserSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Returns a JSON string representation of the object.
  String toJson() {
    return json.encode(toMap());
  }

  /// Returns a new instance of `UserSerializable` from a JSON map.
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

  /// Returns a JSON map representation of the object.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserKeys.id: id,
      UserKeys.name: name,
      UserKeys.username: username,
      UserKeys.email: email,
      
      /// Serializes the `UserAddress` object into a JSON map and inserts it into
      /// the `UserSerializable` object map.
      UserKeys.address: UserAddressAdapter.serializableModelFromUserAddress(
        model: address,
      ).toMap(),
      UserKeys.phone: phone,
      UserKeys.website: website,
      
      /// Serializes the `UserCompany` object into a JSON map and inserts it into
      /// the `UserSerializable` object map.
      UserKeys.company: UserCompanyAdapter.serializableModelFromUserCompany(
        model: company,
      ).toMap(),
    };
  }
}

/// This abstract class defines a static method that returns an instance of `UserSerializable`
/// from an instance of `User`.
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
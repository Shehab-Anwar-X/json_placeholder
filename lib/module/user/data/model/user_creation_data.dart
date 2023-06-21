/// This file contains the implementation of [UserCreationDataSerializable] class which extends
/// [UserCreationData] class and defines a serializable model for the same. It also includes an abstract
/// class [UserCreationDataAdapter] which defines an adapter to convert a [UserCreationData] model to
/// its serializable form.
///
/// Dependencies:
/// * dart:convert - provides encoding and decoding of JSON string
/// * UserCreationData - domain entity class
/// * UserAddress - domain entity class
/// * UserCompany - domain entity class
/// * UserAddressSerializable - serializable model for UserAddress
/// * UserCompanySerializable - serializable model for UserCompany
import 'dart:convert';

import '../../domain/entities/user_creation_data.dart';
import '../../domain/entities/user_address.dart';
import '../../domain/entities/user_company.dart';
import 'models_keys/user_creation_data.dart';
import 'user_address.dart';
import 'user_company.dart';

/// A serializable model for [UserCreationData] class which extends the same class.
class UserCreationDataSerializable extends UserCreationData {
  /// Constructs a [UserCreationDataSerializable] with the given parameters.
  const UserCreationDataSerializable({
    required super.name,
    required super.username,
    required super.email,
    required super.address,
    required super.phone,
    required super.website,
    required super.company,
  });

  /// Creates a new instance of [UserCreationDataSerializable] by copying from an existing instance and
  /// replacing the specified values.
  ///
  /// Returns a new instance of [UserCreationDataSerializable].
  UserCreationDataSerializable copyWith({
    String? name,
    String? username,
    String? email,
    UserAddress? address,
    String? phone,
    String? website,
    UserCompany? company,
  }) {
    return UserCreationDataSerializable(
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
    );
  }

  /// Factory constructor that creates [UserCreationDataSerializable] from json string.
  ///
  /// Returns a new instance of [UserCreationDataSerializable].
  factory UserCreationDataSerializable.fromJson(String str) {
    return UserCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Encodes this [UserCreationDataSerializable] as a JSON string.
  ///
  /// Returns the JSON-encoded string.
  String toJson() {
    return json.encode(toMap());
  }

  /// Factory constructor that creates [UserCreationDataSerializable] from a json [Map].
  ///
  /// Returns a new instance of [UserCreationDataSerializable].
  factory UserCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return UserCreationDataSerializable(
      name: json[UserCreationDataKeys.name] as String,
      username: json[UserCreationDataKeys.username] as String,
      email: json[UserCreationDataKeys.email] as String,
      address: UserAddressSerializable.fromMap(
        Map<String, dynamic>.from(json[UserCreationDataKeys.address] as Map),
      ),
      phone: json[UserCreationDataKeys.phone] as String,
      website: json[UserCreationDataKeys.website] as String,
      company: UserCompanySerializable.fromMap(
        Map<String, dynamic>.from(json[UserCreationDataKeys.company] as Map),
      ),
    );
  }

  /// Converts this [UserCreationDataSerializable] instance to a [Map].
  ///
  /// Returns a [Map] containing the key-value pairs of this instance.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserCreationDataKeys.name: name,
      UserCreationDataKeys.username: username,
      UserCreationDataKeys.email: email,
      UserCreationDataKeys.address:
          UserAddressAdapter.serializableModelFromUserAddress(
        model: address,
      ).toMap(),
      UserCreationDataKeys.phone: phone,
      UserCreationDataKeys.website: website,
      UserCreationDataKeys.company:
          UserCompanyAdapter.serializableModelFromUserCompany(
        model: company,
      ).toMap(),
    };
  }
}

/// An abstract class which defines an adapter to convert a [UserCreationData] model to its serializable form.
abstract class UserCreationDataAdapter {
  const UserCreationDataAdapter();

  /// Creates a new instance of [UserCreationDataSerializable] from a given [UserCreationData].
  ///
  /// Returns a new instance of [UserCreationDataSerializable].
  static UserCreationDataSerializable serializableModelFromUserCreationData({
    required UserCreationData model,
  }) {
    return UserCreationDataSerializable(
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
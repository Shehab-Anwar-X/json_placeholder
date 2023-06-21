import 'dart:convert';

import 'models_keys/user_creation_data.dart';
import '../../domain/entities/user_creation_data.dart';
import '../../domain/entities/user_address.dart';
import '../../domain/entities/user_company.dart';
import 'user_address.dart';
import 'user_company.dart';

class UserCreationDataSerializable extends UserCreationData {
  const UserCreationDataSerializable({
    required super.name,
    required super.username,
    required super.email,
    required super.address,
    required super.phone,
    required super.website,
    required super.company,
  });

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

  factory UserCreationDataSerializable.fromJson(String str) {
    return UserCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

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

abstract class UserCreationDataAdapter {
  const UserCreationDataAdapter();

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

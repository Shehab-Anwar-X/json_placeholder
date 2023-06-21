import 'dart:convert';

import 'models_keys/user_address.dart';
import '../../domain/entities/user_address.dart';
import '../../domain/entities/user_address_geo.dart';
import 'user_address_geo.dart';

class UserAddressSerializable extends UserAddress {
  const UserAddressSerializable({
    required super.street,
    required super.suite,
    required super.city,
    required super.zipcode,
    required super.geo,
  });

  UserAddressSerializable copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    UserAddressGeo? geo,
  }) {
    return UserAddressSerializable(
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geo: geo ?? this.geo,
    );
  }

  factory UserAddressSerializable.fromJson(String str) {
    return UserAddressSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory UserAddressSerializable.fromMap(Map<String, dynamic> json) {
    return UserAddressSerializable(
      street: json[UserAddressKeys.street] as String,
      suite: json[UserAddressKeys.suite] as String,
      city: json[UserAddressKeys.city] as String,
      zipcode: json[UserAddressKeys.zipcode] as String,
      geo: UserAddressGeoSerializable.fromMap(
        Map<String, dynamic>.from(json[UserAddressKeys.geo] as Map),
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserAddressKeys.street: street,
      UserAddressKeys.suite: suite,
      UserAddressKeys.city: city,
      UserAddressKeys.zipcode: zipcode,
      UserAddressKeys.geo:
          UserAddressGeoAdapter.serializableModelFromUserAddressGeo(
        model: geo,
      ).toMap(),
    };
  }
}

abstract class UserAddressAdapter {
  const UserAddressAdapter();

  static UserAddressSerializable serializableModelFromUserAddress({
    required UserAddress model,
  }) {
    return UserAddressSerializable(
      street: model.street,
      suite: model.suite,
      city: model.city,
      zipcode: model.zipcode,
      geo: model.geo,
    );
  }
}

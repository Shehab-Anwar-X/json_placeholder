import 'dart:convert';

import 'models_keys/user_address_geo.dart';
import '../../domain/entities/user_address_geo.dart';

class UserAddressGeoSerializable extends UserAddressGeo {
  const UserAddressGeoSerializable({
    required super.lat,
    required super.lng,
  });
  
  UserAddressGeoSerializable copyWith({
    String? lat,
    String? lng,
  }) {
    return UserAddressGeoSerializable(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  factory UserAddressGeoSerializable.fromJson(String str) {
    return UserAddressGeoSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory UserAddressGeoSerializable.fromMap(Map<String, dynamic> json) {
    return UserAddressGeoSerializable(
      lat: json[UserAddressGeoKeys.lat] as String,
      lng: json[UserAddressGeoKeys.lng] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserAddressGeoKeys.lat: lat,
      UserAddressGeoKeys.lng: lng,
    };
  }
}

abstract class UserAddressGeoAdapter {
  const UserAddressGeoAdapter();

  static UserAddressGeoSerializable serializableModelFromUserAddressGeo({
    required UserAddressGeo model,
  }) {
    return UserAddressGeoSerializable(
      lat: model.lat,
      lng: model.lng,
    );
  }
}

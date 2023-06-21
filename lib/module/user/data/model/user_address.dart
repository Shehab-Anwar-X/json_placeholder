/// This file contains the implementation of the [UserAddressSerializable] class which extends the [UserAddress] class.
/// This class is used to facilitate the serialization and deserialization of [UserAddress] objects.
import 'dart:convert';

import 'models_keys/user_address.dart';
import '../../domain/entities/user_address.dart';
import '../../domain/entities/user_address_geo.dart';
import 'user_address_geo.dart';

/// [UserAddressSerializable] is a serializable version of the [UserAddress] class.
/// It is used to facilitate the serialization and deserialization of [UserAddress] objects.
class UserAddressSerializable extends UserAddress {
  /// Creates a new instance of [UserAddressSerializable].
  ///
  /// - [street]: The name of the street.
  /// - [suite]: The suite or apartment number.
  /// - [city]: The name of the city.
  /// - [zipcode]: The zipcode of the address.
  /// - [geo]: A [UserAddressGeo] object that represents the geo-location of the address.
  const UserAddressSerializable({
    required super.street,
    required super.suite,
    required super.city,
    required super.zipcode,
    required super.geo,
  });

  /// Creates a new instance of [UserAddressSerializable] by copying the values from the current instance and
  /// replacing any provided properties.
  ///
  /// - [street]: The name of the street.
  /// - [suite]: The suite or apartment number.
  /// - [city]: The name of the city.
  /// - [zipcode]: The zipcode of the address.
  /// - [geo]: A [UserAddressGeo] object that represents the geo-location of the address.
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

  /// Creates a new instance of [UserAddressSerializable] from a JSON string.
  ///
  /// - [str]: The JSON string to deserialize.
  factory UserAddressSerializable.fromJson(String str) {
    return UserAddressSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Converts the current instance to a JSON string.
  String toJson() {
    return json.encode(toMap());
  }

  /// Creates a new instance of [UserAddressSerializable] from a map of key/value pairs.
  ///
  /// - [json]: A map of key/value pairs to deserialize.
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

  /// Converts the current instance to a map of key/value pairs.
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

/// [UserAddressAdapter] is an adapter class used to convert [UserAddress] objects to [UserAddressSerializable] objects.
abstract class UserAddressAdapter {
  const UserAddressAdapter();

  /// Converts a [UserAddress] object to a [UserAddressSerializable] object.
  ///
  /// - [model]: The [UserAddress] object to convert.
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

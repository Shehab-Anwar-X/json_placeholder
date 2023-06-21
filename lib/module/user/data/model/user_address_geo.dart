/// This import brings in the dart:convert library
import 'dart:convert';

/// This import brings in the UserAddressGeo class from the models_keys package
import 'models_keys/user_address_geo.dart';

/// This import brings in the UserAddressGeo class from the domain/entities package
import '../../domain/entities/user_address_geo.dart';

/// This class is a serializable version of UserAddressGeo class
class UserAddressGeoSerializable extends UserAddressGeo {
  /// This constructor initializes the lat and lng parameters with super
  const UserAddressGeoSerializable({
    required super.lat,
    required super.lng,
  });

  /// This method returns a new instance of UserAddressGeoSerializable with updated values
  UserAddressGeoSerializable copyWith({
    String? lat,
    String? lng,
  }) {
    return UserAddressGeoSerializable(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  /// This factory method takes in a string and returns an instance of UserAddressGeoSerializable
  factory UserAddressGeoSerializable.fromJson(String str) {
    return UserAddressGeoSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// This method returns a JSON encoded string
  String toJson() {
    return json.encode(toMap());
  }

  /// This factory method takes in a map and returns an instance of UserAddressGeoSerializable
  factory UserAddressGeoSerializable.fromMap(Map<String, dynamic> json) {
    return UserAddressGeoSerializable(
      lat: json[UserAddressGeoKeys.lat] as String,
      lng: json[UserAddressGeoKeys.lng] as String,
    );
  }

  /// This method returns a map of UserAddressGeoSerializable's properties
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserAddressGeoKeys.lat: lat,
      UserAddressGeoKeys.lng: lng,
    };
  }
}

/// This abstract class provides adapter methods for UserAddressGeo
abstract class UserAddressGeoAdapter {
  /// This constructor initializes UserAddressGeoAdapter
  const UserAddressGeoAdapter();

  /// This static method takes in a UserAddressGeo instance and returns a UserAddressGeoSerializable instance
  static UserAddressGeoSerializable serializableModelFromUserAddressGeo({
    required UserAddressGeo model,
  }) {
    return UserAddressGeoSerializable(
      lat: model.lat,
      lng: model.lng,
    );
  }
}
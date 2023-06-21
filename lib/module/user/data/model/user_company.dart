///This import statement imports the dart:convert library 
import 'dart:convert';

/// This import statement imports the UserCompany class from the "user_company.dart" file located in the models_keys directory 
import 'models_keys/user_company.dart';

/// This import statement imports the UserCompany class from the entities directory in the domain package 
import '../../domain/entities/user_company.dart';

/// The UserCompanySerializable class extends the UserCompany class using inheritance and makes it serializable
class UserCompanySerializable extends UserCompany {
  /// This is a constructor which takes three named parameters with "required" attribute and passes them to the super class constructor
  const UserCompanySerializable({
    required String name,
    required String catchPhrase,
    required String bs,
  }) : super(name: name, catchPhrase: catchPhrase, bs: bs);

  /// This method takes three optional parameters as input and returns a new instance of the UserCompanySerializable class with the new values for the properties.
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

  /// This factory method takes a string as input and converts it into a JSON object which is then passed to the UserCompanySerializable.fromMap() method to return a new instance of UserCompanySerializable
  factory UserCompanySerializable.fromJson(String str) {
    return UserCompanySerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// This method is used to convert the UserCompanySerializable object into a JSON string format using the json.encode() method.
  String toJson() {
    return json.encode(toMap());
  }

  /// This factory method takes a map as input, extracts the values of the keys specified in the UserCompanyKeys class, and creates a new instance of UserCompanySerializable with those values.
  factory UserCompanySerializable.fromMap(Map<String, dynamic> json) {
    return UserCompanySerializable(
      name: json[UserCompanyKeys.name] as String,
      catchPhrase: json[UserCompanyKeys.catchPhrase] as String,
      bs: json[UserCompanyKeys.bs] as String,
    );
  }

  /// This method is used to convert the UserCompanySerializable object into a JSON formatted map using the Map data structure.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      UserCompanyKeys.name: name,
      UserCompanyKeys.catchPhrase: catchPhrase,
      UserCompanyKeys.bs: bs,
    };
  }
}

/// The UserCompanyAdapter class is defined as abstract and const, it contains a static method that returns a new instance of UserCompanySerializable object with the values of the provided UserCompany object.
abstract class UserCompanyAdapter {
  const UserCompanyAdapter();

  /// This static method takes one named parameter "model" of type UserCompany and returns a new instance of UserCompanySerializable with the values of the provided UserCompany object.
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
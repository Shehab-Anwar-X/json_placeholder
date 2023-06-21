///This file contains the [AlbumCreationDataSerializable] class, which is used to convert [AlbumCreationData] objects to and from JSON format.
import 'dart:convert';
import 'models_keys/album_creation_data.dart';
import '../../domain/entities/album_creation_data.dart';

///A class that extends the [AlbumCreationData] class and adds serializable functionality to it.
class AlbumCreationDataSerializable extends AlbumCreationData {
  ///Class constructor that creates an instance of the [AlbumCreationDataSerializable] class.
  const AlbumCreationDataSerializable({
    required super.userId,
    required super.title,
  });

  ///A method that creates a new instance of [AlbumCreationDataSerializable] with the specified parameters.
  ///Returns a new object with the same properties as the existing object, but with updated values for any specified parameters.
  AlbumCreationDataSerializable copyWith({
    int? userId,
    String? title,
  }) {
    return AlbumCreationDataSerializable(
      userId: userId ?? this.userId,
      title: title ?? this.title,
    );
  }

  ///A factory method that creates a new instance of [AlbumCreationDataSerializable] by decoding the given JSON string.
  ///Returns the newly created object.
  factory AlbumCreationDataSerializable.fromJson(String str) {
    return AlbumCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  ///A method that encodes the current instance of [AlbumCreationDataSerializable] as a JSON string.
  ///Returns the JSON string.
  String toJson() {
    return json.encode(toMap());
  }

  ///A factory method that creates a new instance of [AlbumCreationDataSerializable] by decoding the given JSON map.
  ///Returns the newly created object.
  factory AlbumCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return AlbumCreationDataSerializable(
      userId: json[AlbumCreationDataKeys.userId] as int,
      title: json[AlbumCreationDataKeys.title] as String,
    );
  }

  ///A method that converts the current instance of [AlbumCreationDataSerializable] to a JSON map.
  ///Returns the JSON map.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      AlbumCreationDataKeys.userId: userId,
      AlbumCreationDataKeys.title: title,
    };
  }
}

///An abstract class that defines an adapter for converting [AlbumCreationData] objects to and from JSON format.
abstract class AlbumCreationDataAdapter {
  ///Class constructor for creating an instance of the [AlbumCreationDataAdapter] class.
  const AlbumCreationDataAdapter();

  ///A static method that creates a new instance of [AlbumCreationDataSerializable] by converting the given [AlbumCreationData] object.
  ///Returns the newly created object.
  static AlbumCreationDataSerializable serializableModelFromAlbumCreationData({
    required AlbumCreationData model,
  }) {
    return AlbumCreationDataSerializable(
      userId: model.userId,
      title: model.title,
    );
  }
}

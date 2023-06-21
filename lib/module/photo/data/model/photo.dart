import 'dart:convert';

/// Importing the photo model keys
import 'models_keys/photo.dart';

/// Importing the photo entity package from the domain layer.
import '../../domain/entities/photo.dart';

/// This class extends the Photo entity from the domain layer and adds additional methods to serialize and deserialize JSON
/// data for persistence.
class PhotoSerializable extends Photo {
  /// Constructor for the PhotoSerializable class.
  const PhotoSerializable({
    required super.albumId,
    required super.id,
    required super.title,
    required super.url,
    required super.thumbnailUrl,
  });

  /// Method that returns a new instance of the PhotoSerializable class with the specified properties if they are not null.
  PhotoSerializable copyWith({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
  }) {
    return PhotoSerializable(
      albumId: albumId ?? this.albumId,
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    );
  }

  /// A factory method that parses a JSON string and returns a new instance of the PhotoSerializable class.
  factory PhotoSerializable.fromJson(String str) {
    return PhotoSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Converts this object to a JSON string.
  String toJson() {
    return json.encode(toMap());
  }

  /// A factory method that takes a map of JSON data and returns a new instance of the PhotoSerializable class.
  factory PhotoSerializable.fromMap(Map<String, dynamic> json) {
    return PhotoSerializable(
      albumId: json[PhotoKeys.albumId] as int,
      id: json[PhotoKeys.id] as int,
      title: json[PhotoKeys.title] as String,
      url: json[PhotoKeys.url] as String,
      thumbnailUrl: json[PhotoKeys.thumbnailUrl] as String,
    );
  }

  /// Method that converts this object into a map of JSON data.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PhotoKeys.albumId: albumId,
      PhotoKeys.id: id,
      PhotoKeys.title: title,
      PhotoKeys.url: url,
      PhotoKeys.thumbnailUrl: thumbnailUrl,
    };
  }
}

/// This abstract class provides methods to convert a Photo entity from the domain layer
/// to a PhotoSerializable object with properties that can be serialized to JSON.
abstract class PhotoAdapter {
  const PhotoAdapter();

  /// A method that takes a Photo object and returns a corresponding instance of the PhotoSerializable class.
  /// This method is used to serialize a Photo entity before it is stored in the database.
  static PhotoSerializable serializableModelFromPhoto({
    required Photo model,
  }) {
    return PhotoSerializable(
      albumId: model.albumId,
      id: model.id,
      title: model.title,
      url: model.url,
      thumbnailUrl: model.thumbnailUrl,
    );
  }
}

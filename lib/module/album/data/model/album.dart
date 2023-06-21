/// This import statement imports the 'dart:convert' library which contains
/// utilities to work with JSON data, such as encoding and decoding.
import 'dart:convert';

/// This import statement imports the 'Album' class from the 'models_keys' folder.
/// This class contains keys used to map JSON responses to the appropriate
/// attributes of an 'Album' object.
import 'models_keys/album.dart';

/// This import statement imports the 'Album' class from the 'entities' folder
/// contained in the 'domain' directory. This class contains the properties
/// that represent an album.
import '../../domain/entities/album.dart';

/// The 'AlbumSerializable' class extends the 'Album' class from the
/// 'entities' folder in the 'domain' directory. This class is used to
/// serialize and deserialize an 'Album' object to and from JSON.
class AlbumSerializable extends Album {
  /// This is the constructor for the 'AlbumSerializable' class.
  /// It initializes the required properties - 'userId', 'id' and 'title'.
  const AlbumSerializable({
    required super.userId,
    required super.id,
    required super.title,
  });

  /// This method returns a new 'AlbumSerializable' object with updated properties.
  /// An optional 'userId', 'id' and 'title' can be supplied as arguments and if
  /// supplied, they would be used to update the corresponding properties of the
  /// current 'AlbumSerializable' object.
  AlbumSerializable copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return AlbumSerializable(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  /// This is a factory method that returns a new 'AlbumSerializable' object
  /// created from a JSON string. The JSON string is decoded using the 'json.decode'
  /// method from the 'dart:convert' library, and then passed to the 'AlbumSerializable.fromMap'
  /// method of this class to create an 'AlbumSerializable' object.
  factory AlbumSerializable.fromJson(String str) {
    return AlbumSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// This method encodes the current 'AlbumSerializable' object to a JSON string
  /// using the 'json.encode' method from the 'dart:convert' library.
  String toJson() {
    return json.encode(toMap());
  }

  /// This is a factory method that returns a new 'AlbumSerializable' object created
  /// from a JSON object. The 'AlbumSerializable.fromMap' method of this class is used to
  /// create an 'AlbumSerializable' object with the values in the JSON object.
  factory AlbumSerializable.fromMap(Map<String, dynamic> json) {
    return AlbumSerializable(
      userId: json[AlbumKeys.userId] as int,
      id: json[AlbumKeys.id] as int,
      title: json[AlbumKeys.title] as String,
    );
  }

  /// This method returns a JSON object representation of the current 'AlbumSerializable'
  /// object. The object is created by mapping the keys in the 'AlbumKeys' class to
  /// corresponding values in the 'AlbumSerializable' object.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      AlbumKeys.userId: userId,
      AlbumKeys.id: id,
      AlbumKeys.title: title,
    };
  }
}

/// This is an abstract class named 'AlbumAdapter'. It provides a static method for
/// mapping an 'Album' object to an 'AlbumSerializable' object.
abstract class AlbumAdapter {
  const AlbumAdapter();

  /// This is a static method that takes in an 'Album' object and returns an
  /// 'AlbumSerializable' object with the same values for each property.
  static AlbumSerializable serializableModelFromAlbum({
    required Album model,
  }) {
    return AlbumSerializable(
      userId: model.userId,
      id: model.id,
      title: model.title,
    );
  }
}

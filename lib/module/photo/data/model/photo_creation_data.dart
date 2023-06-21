/// Module for serializing and deserializing PhotoCreationData objects.
///
/// The PhotoCreationDataSerializable class extends the abstract class PhotoCreationData,
/// and is used to create a serializable version of the model.
///
/// The PhotoCreationDataAdapter class provides a static factory method to convert a
/// PhotoCreationData object to a PhotoCreationDataSerializable object.
///
/// The serialization and deserialization is done using the dart:convert library.
import 'dart:convert';

import 'models_keys/photo_creation_data.dart';
import '../../domain/entities/photo_creation_data.dart';

/// Represents the serializable version of a [PhotoCreationData] object,
/// with an additional factory method for creating a [PhotoCreationDataSerializable]
/// object from a JSON string.
class PhotoCreationDataSerializable extends PhotoCreationData {
  /// Constructs a PhotoCreationDataSerializable object from [albumId], [title], [url],
  /// and [thumbnailUrl] properties, which are inherited from the base class.
  const PhotoCreationDataSerializable({
    required super.albumId,
    required super.title,
    required super.url,
    required super.thumbnailUrl,
  });

  /// Returns a copy of the [PhotoCreationDataSerializable] object with the provided
  /// properties copied over. Any property not specified will remain the same.
  PhotoCreationDataSerializable copyWith({
    int? albumId,
    String? title,
    String? url,
    String? thumbnailUrl,
  }) {
    return PhotoCreationDataSerializable(
      albumId: albumId ?? this.albumId,
      title: title ?? this.title,
      url: url ?? this.url,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    );
  }

  /// Returns a [PhotoCreationDataSerializable] object based on the provided JSON string.
  factory PhotoCreationDataSerializable.fromJson(String str) {
    return PhotoCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Returns a JSON string representation of the [PhotoCreationDataSerializable] object.
  String toJson() {
    return json.encode(toMap());
  }

  /// Returns a [PhotoCreationDataSerializable] object based on the provided map of JSON keys
  /// and dynamic property values.
  factory PhotoCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return PhotoCreationDataSerializable(
      albumId: json[PhotoCreationDataKeys.albumId] as int,
      title: json[PhotoCreationDataKeys.title] as String,
      url: json[PhotoCreationDataKeys.url] as String,
      thumbnailUrl: json[PhotoCreationDataKeys.thumbnailUrl] as String,
    );
  }

  /// Returns a map of the serialized JSON keys and dynamic property values of the
  /// [PhotoCreationDataSerializable] object.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PhotoCreationDataKeys.albumId: albumId,
      PhotoCreationDataKeys.title: title,
      PhotoCreationDataKeys.url: url,
      PhotoCreationDataKeys.thumbnailUrl: thumbnailUrl,
    };
  }
}

/// Provides a static factory method for converting a [PhotoCreationData] object instance
/// to a [PhotoCreationDataSerializable] object instance.
abstract class PhotoCreationDataAdapter {
  /// Returns a [PhotoCreationDataSerializable] object based on the provided [PhotoCreationData] model.
  static PhotoCreationDataSerializable serializableModelFromPhotoCreationData({
    required PhotoCreationData model,
  }) {
    return PhotoCreationDataSerializable(
      albumId: model.albumId,
      title: model.title,
      url: model.url,
      thumbnailUrl: model.thumbnailUrl,
    );
  }
}

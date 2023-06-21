import 'dart:convert';

import 'models_keys/photo_creation_data.dart';
import '../../domain/entities/photo_creation_data.dart';

class PhotoCreationDataSerializable extends PhotoCreationData {
  const PhotoCreationDataSerializable({
    required super.albumId,
    required super.title,
    required super.url,
    required super.thumbnailUrl,
  });
  
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

  factory PhotoCreationDataSerializable.fromJson(String str) {
    return PhotoCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory PhotoCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return PhotoCreationDataSerializable(
      albumId: json[PhotoCreationDataKeys.albumId] as int,
      title: json[PhotoCreationDataKeys.title] as String,
      url: json[PhotoCreationDataKeys.url] as String,
      thumbnailUrl: json[PhotoCreationDataKeys.thumbnailUrl] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PhotoCreationDataKeys.albumId: albumId,
      PhotoCreationDataKeys.title: title,
      PhotoCreationDataKeys.url: url,
      PhotoCreationDataKeys.thumbnailUrl: thumbnailUrl,
    };
  }
}

abstract class PhotoCreationDataAdapter {
  const PhotoCreationDataAdapter();

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

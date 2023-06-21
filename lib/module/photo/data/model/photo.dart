import 'dart:convert';

import 'models_keys/photo.dart';
import '../../domain/entities/photo.dart';

class PhotoSerializable extends Photo {
  const PhotoSerializable({
    required super.albumId,
    required super.id,
    required super.title,
    required super.url,
    required super.thumbnailUrl,
  });

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

  factory PhotoSerializable.fromJson(String str) {
    return PhotoSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory PhotoSerializable.fromMap(Map<String, dynamic> json) {
    return PhotoSerializable(
      albumId: json[PhotoKeys.albumId] as int,
      id: json[PhotoKeys.id] as int,
      title: json[PhotoKeys.title] as String,
      url: json[PhotoKeys.url] as String,
      thumbnailUrl: json[PhotoKeys.thumbnailUrl] as String,
    );
  }

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

abstract class PhotoAdapter {
  const PhotoAdapter();

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

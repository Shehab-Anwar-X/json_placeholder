import 'dart:convert';

import 'models_keys/album.dart';
import '../../domain/entities/album.dart';

class AlbumSerializable extends Album {
  const AlbumSerializable({
    required super.userId,
    required super.id,
    required super.title,
  });

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

  factory AlbumSerializable.fromJson(String str) {
    return AlbumSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory AlbumSerializable.fromMap(Map<String, dynamic> json) {
    return AlbumSerializable(
      userId: json[AlbumKeys.userId] as int,
      id: json[AlbumKeys.id] as int,
      title: json[AlbumKeys.title] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      AlbumKeys.userId: userId,
      AlbumKeys.id: id,
      AlbumKeys.title: title,
    };
  }
}

abstract class AlbumAdapter {
  const AlbumAdapter();

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

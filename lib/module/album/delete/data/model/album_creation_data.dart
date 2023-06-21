import 'dart:convert';

import 'models_keys/album_creation_data.dart';
import '../../domain/entities/album_creation_data.dart';

class AlbumCreationDataSerializable extends AlbumCreationData {
  const AlbumCreationDataSerializable({
    required super.userId,
    required super.title,
  });
  
  AlbumCreationDataSerializable copyWith({
    int? userId,
    String? title,
  }) {
    return AlbumCreationDataSerializable(
      userId: userId ?? this.userId,
      title: title ?? this.title,
    );
  }

  factory AlbumCreationDataSerializable.fromJson(String str) {
    return AlbumCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory AlbumCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return AlbumCreationDataSerializable(
      userId: json[AlbumCreationDataKeys.userId] as int,
      title: json[AlbumCreationDataKeys.title] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      AlbumCreationDataKeys.userId: userId,
      AlbumCreationDataKeys.title: title,
    };
  }
}

abstract class AlbumCreationDataAdapter {
  const AlbumCreationDataAdapter();

  static AlbumCreationDataSerializable serializableModelFromAlbumCreationData({
    required AlbumCreationData model,
  }) {
    return AlbumCreationDataSerializable(
      userId: model.userId,
      title: model.title,
    );
  }
}

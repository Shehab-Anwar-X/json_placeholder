import 'dart:convert';

import 'models_keys/post_creation_data.dart';
import '../../domain/entities/post_creation_data.dart';

class PostCreationDataSerializable extends PostCreationData {
  const PostCreationDataSerializable({
    required super.userId,
    required super.title,
    required super.body,
  });
  
  PostCreationDataSerializable copyWith({
    int? userId,
    String? title,
    String? body,
  }) {
    return PostCreationDataSerializable(
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  factory PostCreationDataSerializable.fromJson(String str) {
    return PostCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory PostCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return PostCreationDataSerializable(
      userId: json[PostCreationDataKeys.userId] as int,
      title: json[PostCreationDataKeys.title] as String,
      body: json[PostCreationDataKeys.body] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PostCreationDataKeys.userId: userId,
      PostCreationDataKeys.title: title,
      PostCreationDataKeys.body: body,
    };
  }
}

abstract class PostCreationDataAdapter {
  const PostCreationDataAdapter();

  static PostCreationDataSerializable serializableModelFromPostCreationData({
    required PostCreationData model,
  }) {
    return PostCreationDataSerializable(
      userId: model.userId,
      title: model.title,
      body: model.body,
    );
  }
}

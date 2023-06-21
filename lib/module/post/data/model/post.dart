import 'dart:convert';

import 'models_keys/post.dart';
import '../../domain/entities/post.dart';

class PostSerializable extends Post {
  const PostSerializable({
    required super.userId,
    required super.id,
    required super.title,
    required super.body,
  });

  PostSerializable copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostSerializable(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  factory PostSerializable.fromJson(String str) {
    return PostSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory PostSerializable.fromMap(Map<String, dynamic> json) {
    return PostSerializable(
      userId: json[PostKeys.userId] as int,
      id: json[PostKeys.id] as int,
      title: json[PostKeys.title] as String,
      body: json[PostKeys.body] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PostKeys.userId: userId,
      PostKeys.id: id,
      PostKeys.title: title,
      PostKeys.body: body,
    };
  }
}

abstract class PostAdapter {
  const PostAdapter();

  static PostSerializable serializableModelFromPost({
    required Post model,
  }) {
    return PostSerializable(
      userId: model.userId,
      id: model.id,
      title: model.title,
      body: model.body,
    );
  }
}

import 'dart:convert';

import 'models_keys/comment.dart';
import '../../domain/entities/comment.dart';

class CommentSerializable extends Comment {
  const CommentSerializable({
    required super.postId,
    required super.id,
    required super.name,
    required super.email,
    required super.body,
  });
  
  CommentSerializable copyWith({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    return CommentSerializable(
      postId: postId ?? this.postId,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      body: body ?? this.body,
    );
  }

  factory CommentSerializable.fromJson(String str) {
    return CommentSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory CommentSerializable.fromMap(Map<String, dynamic> json) {
    return CommentSerializable(
      postId: json[CommentKeys.postId] as int,
      id: json[CommentKeys.id] as int,
      name: json[CommentKeys.name] as String,
      email: json[CommentKeys.email] as String,
      body: json[CommentKeys.body] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      CommentKeys.postId: postId,
      CommentKeys.id: id,
      CommentKeys.name: name,
      CommentKeys.email: email,
      CommentKeys.body: body,
    };
  }
}

abstract class CommentAdapter {
  const CommentAdapter();

  static CommentSerializable serializableModelFromComment({
    required Comment model,
  }) {
    return CommentSerializable(
      postId: model.postId,
      id: model.id,
      name: model.name,
      email: model.email,
      body: model.body,
    );
  }
}

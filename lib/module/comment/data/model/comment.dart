import 'dart:convert';

import '../../domain/entities/comment.dart';
import 'models_keys/comment.dart';

/// A class that extends [Comment] and makes it serializable
class CommentSerializable extends Comment {
  /// Constructs a new [CommentSerializable] instance.
  const CommentSerializable({
    required super.postId,
    required super.id,
    required super.name,
    required super.email,
    required super.body,
  });

  /// Returns a copy of [CommentSerializable] with one or more parameters changed.
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

  /// Creates [CommentSerializable] from a JSON string.
  factory CommentSerializable.fromJson(String str) {
    return CommentSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Serializes [CommentSerializable] to JSON.
  String toJson() {
    return json.encode(toMap());
  }

  /// Creates [CommentSerializable] from a Map string.
  factory CommentSerializable.fromMap(Map<String, dynamic> json) {
    return CommentSerializable(
      postId: json[CommentKeys.postId] as int,
      id: json[CommentKeys.id] as int,
      name: json[CommentKeys.name] as String,
      email: json[CommentKeys.email] as String,
      body: json[CommentKeys.body] as String,
    );
  }

  /// Converts [CommentSerializable] to a Map.
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

/// Adapter class that provides serialization and deserialization methods to [Comment]
abstract class CommentAdapter {
  /// Constructs a new [CommentAdapter] instance.
  const CommentAdapter();

  /// Converts [Comment] to a serializable [CommentSerializable].
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

/// This file contains the implementation of [CommentCreationDataSerializable] and [CommentCreationDataAdapter] which are used to
/// serialize and deserialize CommentCreationData between the API and the app.

import 'dart:convert';

import 'models_keys/comment_creation_data.dart';
import '../../domain/entities/comment_creation_data.dart';

/// A serializable version of [CommentCreationData] which can be used to
/// convert the data from JSON to a Dart object and vice versa.
class CommentCreationDataSerializable extends CommentCreationData {
  const CommentCreationDataSerializable({
    required super.postId,
    required super.name,
    required super.email,
    required super.body,
  });

  /// Returns a new [CommentCreationDataSerializable] object with the optionally
  /// provided properties.
  CommentCreationDataSerializable copyWith({
    int? postId,
    String? name,
    String? email,
    String? body,
  }) {
    return CommentCreationDataSerializable(
      postId: postId ?? this.postId,
      name: name ?? this.name,
      email: email ?? this.email,
      body: body ?? this.body,
    );
  }

  /// Constructs a new instance of [CommentCreationDataSerializable] by
  /// decoding a JSON string.
  factory CommentCreationDataSerializable.fromJson(String str) {
    return CommentCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Encodes this object as a JSON string.
  String toJson() {
    return json.encode(toMap());
  }

  /// Constructs a new instance of [CommentCreationDataSerializable] by
  /// decoding a JSON map.
  factory CommentCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return CommentCreationDataSerializable(
      postId: json[CommentCreationDataKeys.postId] as int,
      name: json[CommentCreationDataKeys.name] as String,
      email: json[CommentCreationDataKeys.email] as String,
      body: json[CommentCreationDataKeys.body] as String,
    );
  }

  /// Encodes this object as a JSON map.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      CommentCreationDataKeys.postId: postId,
      CommentCreationDataKeys.name: name,
      CommentCreationDataKeys.email: email,
      CommentCreationDataKeys.body: body,
    };
  }
}

/// An abstract class that defines a method which takes a [CommentCreationData]
/// object and converts it to a serializable [CommentCreationDataSerializable] object.
abstract class CommentCreationDataAdapter {
  const CommentCreationDataAdapter();

  /// Converts a [CommentCreationData] object to a [CommentCreationDataSerializable] object.
  static CommentCreationDataSerializable
      serializableModelFromCommentCreationData({
    required CommentCreationData model,
  }) {
    return CommentCreationDataSerializable(
      postId: model.postId,
      name: model.name,
      email: model.email,
      body: model.body,
    );
  }
}
import 'dart:convert';

import 'models_keys/comment_creation_data.dart';
import '../../domain/entities/comment_creation_data.dart';

class CommentCreationDataSerializable extends CommentCreationData {
  const CommentCreationDataSerializable({
    required super.postId,
    required super.name,
    required super.email,
    required super.body,
  });
  
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

  factory CommentCreationDataSerializable.fromJson(String str) {
    return CommentCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory CommentCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return CommentCreationDataSerializable(
      postId: json[CommentCreationDataKeys.postId] as int,
      name: json[CommentCreationDataKeys.name] as String,
      email: json[CommentCreationDataKeys.email] as String,
      body: json[CommentCreationDataKeys.body] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      CommentCreationDataKeys.postId: postId,
      CommentCreationDataKeys.name: name,
      CommentCreationDataKeys.email: email,
      CommentCreationDataKeys.body: body,
    };
  }
}

abstract class CommentCreationDataAdapter {
  const CommentCreationDataAdapter();

  static CommentCreationDataSerializable serializableModelFromCommentCreationData({
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

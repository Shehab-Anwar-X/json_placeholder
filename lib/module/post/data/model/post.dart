/// This file contains the implementation of the `PostSerializable` class which extends `Post` and implements
/// serialization and deserialization functionality. It also contains the `PostAdapter` abstract class which
/// defines the method to convert `Post` instances to `SerializablePost` instances.
import 'dart:convert';

import 'models_keys/post.dart';
import '../../domain/entities/post.dart';

/// An implementation of the `Post` entity that can be serialized and deserialized from JSON.
class PostSerializable extends Post {
  /// Creates a new instance of the `PostSerializable` class.
  const PostSerializable({
    required super.userId,
    required super.id,
    required super.title,
    required super.body,
  });

  /// Returns a new instance of the `PostSerializable` class with the given properties.
  ///
  /// If any of the parameters are null, the value from the current instance is used instead.
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

  /// Creates a new instance of the `PostSerializable` class from a JSON string.
  factory PostSerializable.fromJson(String str) {
    return PostSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Converts this instance of the `PostSerializable` class to a JSON string.
  String toJson() {
    return json.encode(toMap());
  }

  /// Creates a new instance of the `PostSerializable` class from a JSON map.
  factory PostSerializable.fromMap(Map<String, dynamic> json) {
    return PostSerializable(
      userId: json[PostKeys.userId] as int,
      id: json[PostKeys.id] as int,
      title: json[PostKeys.title] as String,
      body: json[PostKeys.body] as String,
    );
  }

  /// Converts this instance of the `PostSerializable` class to a JSON map.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PostKeys.userId: userId,
      PostKeys.id: id,
      PostKeys.title: title,
      PostKeys.body: body,
    };
  }
}

/// An abstract class that defines the method to convert `Post` instances to `SerializablePost` instances.
abstract class PostAdapter {
  /// Converts the given `Post` instance to a `SerializablePost` instance.
  ///
  /// The properties in the resulting `SerializablePost` instance will be the same as those in the
  /// given `Post` instance.
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

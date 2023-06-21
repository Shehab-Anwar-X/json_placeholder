/// This file contains the implementation of the TodoSerializable class and the TodoAdapter abstract class
import 'dart:convert';

import 'models_keys/todo.dart';
import '../../domain/entities/todo.dart';

/// A class that represents a serializable Todo entity
class TodoSerializable extends Todo {
  /// Constructs a new instance of [TodoSerializable]
  ///
  /// [userId] is the ID of the user who owns this todo
  ///
  /// [id] is the unique ID of the todo
  ///
  /// [title] is the title of the todo
  ///
  /// [completed] is a flag indicating whether the todo is completed or not
  const TodoSerializable({
    required super.userId,
    required super.id,
    required super.title,
    required super.completed,
  });

  /// Returns a new instance of [TodoSerializable] with the given values
  ///
  /// [userId] is the ID of the user who owns this todo
  ///
  /// [id] is the unique ID of the todo
  ///
  /// [title] is the title of the todo
  ///
  /// [completed] is a flag indicating whether the todo is completed or not
  TodoSerializable copyWith({
    int? userId,
    int? id,
    String? title,
    bool? completed,
  }) {
    return TodoSerializable(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }

  /// Returns a new instance of [TodoSerializable] created from the given JSON-encoded [str]
  factory TodoSerializable.fromJson(String str) {
    return TodoSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// Returns a JSON-encoded string representation of this instance
  String toJson() {
    return json.encode(toMap());
  }

  /// Returns a new instance of [TodoSerializable] created from the given [json] map
  factory TodoSerializable.fromMap(Map<String, dynamic> json) {
    return TodoSerializable(
      userId: json[TodoKeys.userId] as int,
      id: json[TodoKeys.id] as int,
      title: json[TodoKeys.title] as String,
      completed: json[TodoKeys.completed] as bool,
    );
  }

  /// Returns a map representation of this instance
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TodoKeys.userId: userId,
      TodoKeys.id: id,
      TodoKeys.title: title,
      TodoKeys.completed: completed,
    };
  }
}

/// An abstract class that provides methods to convert [Todo] entities to [TodoSerializable] instances
abstract class TodoAdapter {
  /// Constructs a new instance of [TodoAdapter]
  const TodoAdapter();

  /// Returns a new instance of [TodoSerializable] created from the given [model]
  static TodoSerializable serializableModelFromTodo({
    required Todo model,
  }) {
    return TodoSerializable(
      userId: model.userId,
      id: model.id,
      title: model.title,
      completed: model.completed,
    );
  }
}
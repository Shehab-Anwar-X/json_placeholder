import 'dart:convert';

import '../../domain/entities/todo_creation_data.dart';

/// This import represents the TodoCreationData model's keys.
import 'models_keys/todo_creation_data.dart';

/// This class extends the TodoCreationData class and implements methods to serialize and deserialize TodoCreationData objects.
class TodoCreationDataSerializable extends TodoCreationData {
  /// Constructs a new TodoCreationDataSerializable object.
  const TodoCreationDataSerializable({
    required super.userId,
    required super.title,
    required super.completed,
  });

  /// This method creates a copy of the current TodoCreationDataSerializable object.
  TodoCreationDataSerializable copyWith({
    int? userId,
    String? title,
    bool? completed,
  }) {
    return TodoCreationDataSerializable(
      userId: userId ?? this.userId,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }

  /// This factory method creates a new TodoCreationDataSerializable object from a JSON string.
  factory TodoCreationDataSerializable.fromJson(String str) {
    return TodoCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// This method converts the TodoCreationDataSerializable object to a JSON string.
  String toJson() {
    return json.encode(toMap());
  }

  /// This factory method creates a new TodoCreationDataSerializable object from a map of key-value pairs.
  factory TodoCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return TodoCreationDataSerializable(
      userId: json[TodoCreationDataKeys.userId] as int,
      title: json[TodoCreationDataKeys.title] as String,
      completed: json[TodoCreationDataKeys.completed] as bool,
    );
  }

  /// This method converts the TodoCreationDataSerializable object to a map of key-value pairs.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TodoCreationDataKeys.userId: userId,
      TodoCreationDataKeys.title: title,
      TodoCreationDataKeys.completed: completed,
    };
  }
}

/// This abstract class represents the adapter for TodoCreationData objects.
abstract class TodoCreationDataAdapter {
  /// Constructs a new TodoCreationDataAdapter object.
  const TodoCreationDataAdapter();

  /// This static method creates a new TodoCreationDataSerializable object from a TodoCreationData object.
  static TodoCreationDataSerializable serializableModelFromTodoCreationData({
    required TodoCreationData model,
  }) {
    return TodoCreationDataSerializable(
      userId: model.userId,
      title: model.title,
      completed: model.completed,
    );
  }
}

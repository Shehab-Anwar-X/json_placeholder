import 'dart:convert';

import 'models_keys/todo_creation_data.dart';
import '../../domain/entities/todo_creation_data.dart';

class TodoCreationDataSerializable extends TodoCreationData {
  const TodoCreationDataSerializable({
    required super.userId,
    required super.title,
    required super.completed,
  });
  
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

  factory TodoCreationDataSerializable.fromJson(String str) {
    return TodoCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory TodoCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return TodoCreationDataSerializable(
      userId: json[TodoCreationDataKeys.userId] as int,
      title: json[TodoCreationDataKeys.title] as String,
      completed: json[TodoCreationDataKeys.completed] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TodoCreationDataKeys.userId: userId,
      TodoCreationDataKeys.title: title,
      TodoCreationDataKeys.completed: completed,
    };
  }
}

abstract class TodoCreationDataAdapter {
  const TodoCreationDataAdapter();

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

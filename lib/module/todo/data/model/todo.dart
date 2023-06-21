import 'dart:convert';

import 'models_keys/todo.dart';
import '../../domain/entities/todo.dart';

class TodoSerializable extends Todo {
  const TodoSerializable({
    required super.userId,
    required super.id,
    required super.title,
    required super.completed,
  });
  
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

  factory TodoSerializable.fromJson(String str) {
    return TodoSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory TodoSerializable.fromMap(Map<String, dynamic> json) {
    return TodoSerializable(
      userId: json[TodoKeys.userId] as int,
      id: json[TodoKeys.id] as int,
      title: json[TodoKeys.title] as String,
      completed: json[TodoKeys.completed] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      TodoKeys.userId: userId,
      TodoKeys.id: id,
      TodoKeys.title: title,
      TodoKeys.completed: completed,
    };
  }
}

abstract class TodoAdapter {
  const TodoAdapter();

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

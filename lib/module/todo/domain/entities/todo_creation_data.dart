/// This class represents the data needed to create a new todo item.
import 'package:equatable/equatable.dart';

class TodoCreationData extends Equatable {
  /// The user ID associated with the todo item.
  final int userId;

  /// The title of the todo item.
  final String title;

  /// Indicates whether or not the todo item is complete.
  final bool completed;

  /// Creates a new instance of [TodoCreationData].
  ///
  /// [userId] is the user ID associated with the todo item.
  /// [title] is the title of the todo item.
  /// [completed] indicates whether or not the todo item is complete.
  const TodoCreationData({
    required this.userId,
    required this.title,
    required this.completed,
  });

  @override
  List<Object?> get props {
    return [
      userId,
      title,
      completed,
    ];
  }
}

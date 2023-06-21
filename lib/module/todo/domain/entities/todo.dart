/// Flutter code for Todo class with Equatable mixin.
///
/// A [Todo] represents a single task to be completed, including a user ID, unique ID,
/// a title, and a completion flag.
///
/// Extends [Equatable] for easy value comparison.
import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  /// ID of user who owns the task.
  final int userId;

  /// Unique ID of the task.
  final int id;

  /// Title of the task.
  final String title;

  /// Flag representing whether or not the task has been completed.
  final bool completed;

  /// Constructs a [Todo] from required fields.
  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  /// Returns a list of [userId], [id], [title], and [completed]
  /// for value comparison.
  @override
  List<Object?> get props {
    return [
      userId,
      id,
      title,
      completed,
    ];
  }
}

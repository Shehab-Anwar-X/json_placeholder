import 'package:equatable/equatable.dart';

class TodoCreationData extends Equatable {
  final int userId;
  final String title;
  final bool completed;

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

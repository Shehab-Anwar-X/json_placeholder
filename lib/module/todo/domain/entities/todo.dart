import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  
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

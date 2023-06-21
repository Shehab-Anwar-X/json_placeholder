import 'package:equatable/equatable.dart';

class CommentCreationData extends Equatable {
  final int postId;
  final String name;
  final String email;
  final String body;

  const CommentCreationData({
    required this.postId,
    required this.name,
    required this.email,
    required this.body,
  });
  
  @override
  List<Object?> get props {
    return [
      postId,
    	name,
    	email,
    	body,
    ];
  }
}

import 'package:equatable/equatable.dart';

class PostCreationData extends Equatable {
  final int userId;
  final String title;
  final String body;

  const PostCreationData({
    required this.userId,
    required this.title,
    required this.body,
  });
  
  @override
  List<Object?> get props {
    return [
      userId,
    	title,
    	body,
    ];
  }
}

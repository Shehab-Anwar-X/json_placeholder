import 'package:equatable/equatable.dart';

/// A class that represents the data needed to create a comment
class CommentCreationData extends Equatable {
  /// The ID of the post where the comment is being created
  final int postId;

  /// The name of the user creating the comment
  final String name;

  /// The email of the user creating the comment
  final String email;

  /// The body of the comment being created
  final String body;

  /// Creates a new `CommentCreationData` object.
  ///
  /// [postId] represents the ID of the post where the comment is being created
  ///
  /// [name] represents the name of the user creating the comment
  ///
  /// [email] represents the email of the user creating the comment
  ///
  /// [body] represents the body of the comment being created
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

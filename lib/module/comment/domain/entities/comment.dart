import 'package:equatable/equatable.dart';

/// A class representing a comment object.
///
/// This class extends the Equatable class from the 'equatable' package.
class Comment extends Equatable {
  /// The unique ID of the post that the comment belongs to.
  final int postId;

  /// The unique ID of the comment.
  final int id;

  /// The name of the comment author.
  final String name;

  /// The email address of the comment author.
  final String email;

  /// The content of the comment.
  final String body;

  /// Constructor for creating a new Comment object.
  ///
  /// The [postId], [id], [name], [email] and [body] parameters are all required.
  const Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  @override
  /// Returns a list of properties to be used for comparing instances of this class.
  ///
  /// In this case, the properties are:
  ///   - postId
  ///   - id
  ///   - name
  ///   - email
  ///   - body
  List<Object?> get props {
    return [
      postId,
      id,
      name,
      email,
      body,
    ];
  }
}
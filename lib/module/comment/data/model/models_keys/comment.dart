/// An abstract class for comment keys.
abstract class CommentKeys {
  const CommentKeys();

  /// A constant variable to represent the post ID.
  static const postId = 'post_id';

  /// A constant variable to represent the comment ID.
  static const id = 'id';

  /// A constant variable to represent the name of the commenter.
  static const name = 'name';

  /// A constant variable to represent the email of the commenter.
  static const email = 'email';

  /// A constant variable to represent the body of the comment.
  static const body = 'body';

  /// A static method to convert the comment keys to a list of strings.
  static List<String> toList() {
    return <String>[
      postId,
      id,
      name,
      email,
      body,
    ];
  }
}
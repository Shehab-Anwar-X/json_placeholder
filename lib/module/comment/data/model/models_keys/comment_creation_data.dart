/// An abstract class that defines keys for creating a comment.
abstract class CommentCreationDataKeys {
  const CommentCreationDataKeys();

  /// The key for post id.
  static const postId = 'post_id';

  /// The key for user name.
  static const name = 'name';

  /// The key for user email.
  static const email = 'email';

  /// The key for comment body.
  static const body = 'body';

  /// Converts all the keys to a list.
  static List<String> toList() {
    return <String>[
      postId,
      name,
      email,
      body,
    ];
  }
}

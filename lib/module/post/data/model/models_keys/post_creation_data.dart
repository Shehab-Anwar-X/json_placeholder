/// A class representing keys for creating a post.
abstract class PostCreationDataKeys {
  const PostCreationDataKeys();

  /// The key for user ID field.
  static const userId = 'user_id';

  /// The key for title field.
  static const title = 'title';

  /// The key for body field.
  static const body = 'body';

  /// Returns the list of all the keys.
  static List<String> toList() {
    return <String>[
      userId,
      title,
      body,
    ];
  }
}
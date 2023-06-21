abstract class CommentCreationDataKeys {
  const CommentCreationDataKeys();

  static const postId = 'post_id';
  static const name = 'name';
  static const email = 'email';
  static const body = 'body';

  static List<String> toList() {
    return <String>[
      postId,
      name,
      email,
      body,
    ];
  }
}

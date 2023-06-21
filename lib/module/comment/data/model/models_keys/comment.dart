abstract class CommentKeys {
  const CommentKeys();

  static const postId = 'post_id';
  static const id = 'id';
  static const name = 'name';
  static const email = 'email';
  static const body = 'body';

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

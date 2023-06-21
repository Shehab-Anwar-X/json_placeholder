abstract class PostKeys {
  const PostKeys();

  static const userId = 'user_id';
  static const id = 'id';
  static const title = 'title';
  static const body = 'body';

  static List<String> toList() {
    return <String>[
      userId,
      id,
      title,
      body,
    ];
  }
}

abstract class PostCreationDataKeys {
  const PostCreationDataKeys();
  
  static const userId = 'user_id';
  static const title = 'title';
  static const body = 'body';

  static List<String> toList() {
    return <String>[
      userId,
      title,
      body,
    ];
  }
}

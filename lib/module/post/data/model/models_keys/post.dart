/// An abstract class that serves as a key holder for posts.
abstract class PostKeys {
  
  /// A constant constructor for the [PostKeys] class.
  const PostKeys();

  /// A static constant variable that stores the user id key as a string.
  static const userId = 'user_id';

  /// A static constant variable that stores the id key as a string.
  static const id = 'id';

  /// A static constant variable that stores the title key as a string.
  static const title = 'title';

  /// A static constant variable that stores the body key as a string.
  static const body = 'body';

  /// A static method that returns a list of all the keys as strings.
  /// 
  /// The list contains the [userId], [id], [title], and [body] keys.
  static List<String> toList() {
    return <String>[
      userId,
      id,
      title,
      body,
    ];
  }
}
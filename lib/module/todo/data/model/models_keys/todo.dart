abstract class TodoKeys {
  const TodoKeys();
  
  static const userId = 'user_id';
  static const id = 'id';
  static const title = 'title';
  static const completed = 'completed';

  static List<String> toList() {
    return <String>[
      userId,
      id,
      title,
      completed,
    ];
  }
}

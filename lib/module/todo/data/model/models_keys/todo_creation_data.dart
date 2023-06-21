abstract class TodoCreationDataKeys {
  const TodoCreationDataKeys();
  
  static const userId = 'user_id';
  static const title = 'title';
  static const completed = 'completed';

  static List<String> toList() {
    return <String>[
      userId,
      title,
      completed,
    ];
  }
}

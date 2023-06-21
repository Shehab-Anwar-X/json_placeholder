/// This is an abstract class representing data keys for creating a new Todo entry
abstract class TodoCreationDataKeys {
  const TodoCreationDataKeys();

  /// A constant representing the userId key
  static const userId = 'user_id';

  /// A constant representing the title key
  static const title = 'title';

  /// A constant representing the completed key
  static const completed = 'completed';

  /// A function to return a list of all the Todo creation data keys
  static List<String> toList() {
    return <String>[
      userId,
      title,
      completed,
    ];
  }
}

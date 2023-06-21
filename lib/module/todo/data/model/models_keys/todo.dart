/// This is an abstract class TodoKeys that declares a constant class object.
abstract class TodoKeys {
  
  /// This is the constructor of TodoKeys class.
  const TodoKeys();

  /// This is a constant String variable that stores the user ID.
  static const userId = 'user_id';

  /// This is a constant String variable that stores the ID.
  static const id = 'id';

  /// This is a constant String variable that stores the title of to-do.
  static const title = 'title';

  /// This is a constant String variable that stores the status of completion of the to-do.
  static const completed = 'completed';

  /// This is a static function that converts the keys to a List of Strings.
  /// This function returns List of Strings.
  static List<String> toList() {
    return <String>[
      userId,
      id,
      title,
      completed,
    ];
  }
}
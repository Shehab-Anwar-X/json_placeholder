/// This is the `post` class that extends the `equatable` class.
/// This class represents a single post object fetched from the API.
import 'package:equatable/equatable.dart';

class Post extends Equatable {
  /// The `userId` property of the `post` object.
  final int userId;

  /// The `id` property of the `post` object.
  final int id;

  /// The `title` property of the `post` object.
  final String title;

  /// The `body` property of the `post` object.
  final String body;

  /// The constructor of the `post` object with required parameters: `userId`, `id`, `title`, and `body`.
  /// Takes an `int` `userId`, an `int` `id`, a `String` `title`, and a `String` `body`.
  const Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  /// Returns a list of all properties of the `post` object to ensure equality.
  @override
  List<Object?> get props {
    return [
      userId,
      id,
      title,
      body,
    ];
  }
}

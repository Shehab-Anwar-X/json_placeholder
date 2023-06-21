import '../../../domain/entities/post_creation_data.dart';

/// Defines an abstract class for a basis of PostDataSource
abstract class PostBaseDataSource {
  /// A constant constructor that can be inherit by child classes
  const PostBaseDataSource();

  /// A method that creates a post
  ///
  /// Requires a [PostCreationData] object as a parameter
  /// Returns a Future of Integer with the ID of the created post
  Future<int> create({
    required PostCreationData creationData,
  });

  /// A method that deletes a post
  ///
  /// Requires an integer [id] as a parameter
  /// Returns a Future of Void
  Future<void> delete({
    required int id,
  });

  /// A method that lists all posts
  ///
  /// Requires an integer [limit] and an integer [offset] as parameters
  /// [userId] is an optional parameter that represents the user ID
  /// Returns a Future of List of Map<String, dynamic> with all the posts
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? userId,
  });

  /// A method that reads a post
  ///
  /// Requires an integer [id] as a parameter
  /// Returns a Future of Map<String, dynamic> with the post data
  Future<Map<String, dynamic>?> read({
    required int id,
  });

  /// A method that updates an existing post
  ///
  /// Requires an integer [id] and a [PostCreationData] object as parameters
  /// Returns a Future of Void
  Future<void> update({
    required int id,
    required PostCreationData newData,
  });
}

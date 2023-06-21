import '../entities/post.dart';
import '../entities/post_creation_data.dart';

/// This file contains an abstract class `BasePostRepository` which provides a blueprint for a post repository in the app.
///
/// The `BasePostRepository` has several abstract methods that must be implemented by any concrete class that extends it.
///
/// In this module, the following classes are imported:
///   - `PostCreationData` from `../entities/post_creation_data.dart`
///   - `Post` from `../entities/post.dart`
abstract class BasePostRepository {
  /// A constructor for the `BasePostRepository` class.
  const BasePostRepository();

  /// This method takes in a `PostCreationData` object and creates a new post based on the provided data.
  ///
  /// The method returns the `id` of the newly created post.
  Future<int> create({required PostCreationData creationData});

  /// This method takes in an `id` and deletes the post with the corresponding `id` from the repository.
  Future<void> delete({required int id});

  /// This method takes in `limit` and `offset` values and returns a list of posts.
  ///
  /// The `limit` parameter is used to limit the number of posts to be returned.
  ///
  /// The `offset` parameter is used to skip the specified number of posts before returning the results.
  ///
  /// The optional `userId` parameter is used to filter the posts by the supplied `userId`.
  Future<List<Post>> list(
      {required int limit, required int offset, int? userId});

  /// This method takes in an `id` and finds and returns the post with the corresponding `id`.
  ///
  /// If no post is found with the supplied `id`, the method returns null.
  Future<Post?> read({required int id});

  /// This method takes in an `id` and a `PostCreationData` object, and updates the post with the corresponding `id` based on the provided `PostCreationData`.
  Future<void> update({required int id, required PostCreationData newData});
}

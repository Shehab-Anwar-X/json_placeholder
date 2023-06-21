import '../entities/comment.dart';
import '../entities/comment_creation_data.dart';

/// An abstract class representing a comment repository that defines
/// methods to create, read, update, and delete comments.
abstract class BaseCommentRepository {
  /// Constructs a [BaseCommentRepository].
  const BaseCommentRepository();

  /// Creates a comment with the given [CommentCreationData].
  ///
  /// Returns the created comment's ID.
  Future<int> create({required CommentCreationData creationData});

  /// Deletes a comment with the given ID.
  Future<void> delete({required int id});

  /// Returns a list of [Comment]s with a given limit,
  /// offset, and optional post ID.
  ///
  /// If no [postId] is specified, returns all comments.
  Future<List<Comment>> list(
      {required int limit, required int offset, int? postId});

  /// Returns the [Comment] with the specified ID.
  ///
  /// If a comment with the specified ID does not exist, returns `null`.
  Future<Comment?> read({required int id});

  /// Updates the comment with the specified ID with the given data.
  Future<void> update({required int id, required CommentCreationData newData});
}

/// This file contains the implementation of the [CommentListUseCase].
///

import '../repository/comment_repository.dart';
import '../entities/comment.dart';

/// A use case for retrieving a list of comments.
///
/// The [CommentListUseCase] class manages the retrieval of a list of comments
/// from the provided [BaseCommentRepository].
///
/// The implementation of the [CommentListUseCase] class allows for a user to
/// retrieve a list of comments matching the provided `limit` and `offset`
/// parameters. Additionally, if a `postId` is provided, this implementation
/// will only retrieve comments associated with the provided post.
class CommentListUseCase {
  final BaseCommentRepository _repository;

  /// Constructs a [CommentListUseCase] instance.
  ///
  /// The `repository` parameter is used to provide an instance of the
  /// [BaseCommentRepository] for the use case.
  const CommentListUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  /// Calls the [BaseCommentRepository.list] method to retrieve a list of
  /// comments.
  ///
  /// The `limit` parameter specifies how many comments to retrieve at once.
  /// The `offset` parameter specifies how many comments to skip over before
  /// retrieving. If a `postId` value is provided, only comments associated
  /// with that post will be retrieved.
  ///
  /// Returns a [List<Comment>] of comments matching the specified criteria.
  Future<List<Comment>> call(
      {required int limit, required int offset, int? postId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      postId: postId,
    );
  }
}
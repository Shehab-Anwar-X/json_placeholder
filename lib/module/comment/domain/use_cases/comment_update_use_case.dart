import '../entities/comment_creation_data.dart';
import '../repository/Comment_repository.dart';

/// A class representing the use case for updating a comment.
class CommentUpdateUseCase {
  /// The repository for performing comment-related operations.
  final BaseCommentRepository _repository;

  /// Creates an instance of `CommentUpdateUseCase`.
  ///
  /// Takes in a required `repository` parameter of type `BaseCommentRepository`.
  const CommentUpdateUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  /// Updates a comment.
  ///
  /// Takes in a required `id` parameter of type `int` representing the comment id.
  ///
  /// Takes in a required `newData` parameter of type `CommentCreationData`
  /// representing the new data that will replace the existing comment data.
  ///
  /// Returns a Future that completes with void.
  Future<void> call({required int id, required CommentCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

import '../repository/Comment_repository.dart';

/// A class representing a Use Case for deleting comments.
///
/// This Use Case uses an implementation of the [BaseCommentRepository] interface
/// to delete a comment with a given [id].
class CommentDeleteUseCase {
  /// The repository used to delete the comment.
  final BaseCommentRepository _repository;

  /// Creates a new instance of [CommentDeleteUseCase], taking in a required
  /// [repository] parameter which must implement the [BaseCommentRepository]
  /// interface.
  const CommentDeleteUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  /// Deletes a comment with the given [id] using the implemented repository.
  ///
  /// Returns a Future void object indicating successful deletion.
  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}

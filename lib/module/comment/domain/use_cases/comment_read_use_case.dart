import '../repository/comment_repository.dart';
import '../entities/comment.dart';

/// The use case responsible for reading a comment.
class CommentReadUseCase {
  final BaseCommentRepository _repository;

  /// Constructs a CommentReadUseCase with the provided repository.
  ///
  /// The [repository] parameter is the instance of the repository that will be used
  /// to retrieve the comment data.
  const CommentReadUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  /// Reads a comment with the specified [id].
  ///
  /// The [id] parameter is the unique identifier of the comment to be read.
  ///
  /// Returns a [Comment] object if a comment with the specified ID exists,
  /// otherwise returns `null`.
  Future<Comment?> call({required int id}) {
    return _repository.read(
      id: id,
    );
  }
}

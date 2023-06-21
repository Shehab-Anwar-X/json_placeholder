import '../entities/comment_creation_data.dart';
import '../repository/Comment_repository.dart';

/// A class that contains the use case for creating a comment.
class CommentCreateUseCase {
  /// The repository used to create a comment.
  final BaseCommentRepository _repository;

  /// Creates an instance of [CommentCreateUseCase].
  ///
  /// [repository] is required and represents the repository used to create a comment.
  const CommentCreateUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  /// Creates a new comment and returns the ID of the newly created comment.
  ///
  /// [creationData] represents the data needed to create the new comment.
  Future<int> call({required CommentCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

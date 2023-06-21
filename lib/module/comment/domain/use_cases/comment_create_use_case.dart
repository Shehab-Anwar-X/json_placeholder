import '../repository/comment_repository.dart';
import '../entities/comment_creation_data.dart';

class CommentCreateUseCase {
  final BaseCommentRepository _repository;

  const CommentCreateUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  Future<int> call({required CommentCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

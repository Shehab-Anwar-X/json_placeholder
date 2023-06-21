import '../repository/comment_repository.dart';
import '../entities/comment_creation_data.dart';


class CommentUpdateUseCase {
  final BaseCommentRepository _repository;

  const CommentUpdateUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  Future<void> call({required int id, required CommentCreationData newData}){
    return _repository.update(id: id, newData: newData,);
  }
}

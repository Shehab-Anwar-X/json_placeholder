import '../repository/comment_repository.dart';


class CommentDeleteUseCase {
  final BaseCommentRepository _repository;

  const CommentDeleteUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  Future<void> call({required int id}){
    return _repository.delete(id: id,);
  }
}

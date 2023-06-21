import '../repository/comment_repository.dart';
import '../entities/comment.dart';


class CommentReadUseCase {
  final BaseCommentRepository _repository;

  const CommentReadUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  Future<Comment?> call({required int id}){
    return _repository.read(id: id,);
  }
}

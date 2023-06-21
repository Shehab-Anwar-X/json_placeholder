import '../repository/comment_repository.dart';
import '../entities/comment.dart';


class CommentListUseCase {
  final BaseCommentRepository _repository;

  const CommentListUseCase({required BaseCommentRepository repository})
      : _repository = repository;

  Future<List<Comment>> call({required int limit, required int offset, int? postId}){
    return _repository.list(limit: limit, offset: offset, postId: postId,);
  }
}

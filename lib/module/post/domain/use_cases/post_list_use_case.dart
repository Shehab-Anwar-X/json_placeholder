import '../repository/post_repository.dart';
import '../entities/post.dart';

class PostListUseCase {
  final BasePostRepository _repository;

  const PostListUseCase({required BasePostRepository repository})
      : _repository = repository;

  Future<List<Post>> call(
      {required int limit, required int offset, int? userId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );
  }
}

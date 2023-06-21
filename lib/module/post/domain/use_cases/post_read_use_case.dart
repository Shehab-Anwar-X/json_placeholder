import '../repository/post_repository.dart';
import '../entities/post.dart';


class PostReadUseCase {
  final BasePostRepository _repository;

  const PostReadUseCase({required BasePostRepository repository})
      : _repository = repository;

  Future<Post?> call({required int id}){
    return _repository.read(id: id,);
  }
}

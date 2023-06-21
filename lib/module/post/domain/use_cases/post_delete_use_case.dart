import '../repository/post_repository.dart';


class PostDeleteUseCase {
  final BasePostRepository _repository;

  const PostDeleteUseCase({required BasePostRepository repository})
      : _repository = repository;

  Future<void> call({required int id}){
    return _repository.delete(id: id,);
  }
}

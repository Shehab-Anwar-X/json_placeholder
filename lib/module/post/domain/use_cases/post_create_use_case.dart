import '../repository/post_repository.dart';
import '../entities/post_creation_data.dart';


class PostCreateUseCase {
  final BasePostRepository _repository;

  const PostCreateUseCase({required BasePostRepository repository})
      : _repository = repository;

  Future<int> call({required PostCreationData creationData}){
    return _repository.create(creationData: creationData,);
  }
}

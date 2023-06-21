import '../repository/post_repository.dart';
import '../entities/post_creation_data.dart';

class PostUpdateUseCase {
  final BasePostRepository _repository;

  const PostUpdateUseCase({required BasePostRepository repository})
      : _repository = repository;

  Future<void> call({required int id, required PostCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

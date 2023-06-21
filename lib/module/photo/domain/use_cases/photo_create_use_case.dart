import '../repository/photo_repository.dart';
import '../entities/photo_creation_data.dart';

class PhotoCreateUseCase {
  final BasePhotoRepository _repository;

  const PhotoCreateUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  Future<int> call({required PhotoCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

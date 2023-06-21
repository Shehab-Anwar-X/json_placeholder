import '../repository/photo_repository.dart';

class PhotoDeleteUseCase {
  final BasePhotoRepository _repository;

  const PhotoDeleteUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}

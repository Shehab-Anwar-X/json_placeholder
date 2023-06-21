import '../repository/photo_repository.dart';
import '../entities/photo.dart';


class PhotoReadUseCase {
  final BasePhotoRepository _repository;

  const PhotoReadUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  Future<Photo?> call({required int id}){
    return _repository.read(id: id,);
  }
}

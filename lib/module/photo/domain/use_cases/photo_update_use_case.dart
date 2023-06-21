import '../repository/photo_repository.dart';
import '../entities/photo_creation_data.dart';


class PhotoUpdateUseCase {
  final BasePhotoRepository _repository;

  const PhotoUpdateUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  Future<void> call({required int id, required PhotoCreationData newData}){
    return _repository.update(id: id, newData: newData,);
  }
}

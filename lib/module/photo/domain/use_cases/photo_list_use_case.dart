import '../repository/photo_repository.dart';
import '../entities/photo.dart';


class PhotoListUseCase {
  final BasePhotoRepository _repository;

  const PhotoListUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  Future<List<Photo>> call({required int limit, required int offset, int? albumId}){
    return _repository.list(limit: limit, offset: offset, albumId: albumId,);
  }
}

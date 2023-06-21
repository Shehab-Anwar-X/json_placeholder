import '../repository/album_repository.dart';
import '../entities/album_creation_data.dart';


class AlbumCreateUseCase {
  final BaseAlbumRepository _repository;

  const AlbumCreateUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  Future<int> call({required AlbumCreationData creationData}){
    return _repository.create(creationData: creationData,);
  }
}

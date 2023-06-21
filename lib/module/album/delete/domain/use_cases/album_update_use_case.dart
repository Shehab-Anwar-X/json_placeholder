import '../repository/album_repository.dart';
import '../entities/album_creation_data.dart';

class AlbumUpdateUseCase {
  final BaseAlbumRepository _repository;

  const AlbumUpdateUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  Future<void> call({required int id, required AlbumCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

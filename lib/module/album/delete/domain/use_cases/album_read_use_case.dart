import '../repository/album_repository.dart';
import '../entities/album.dart';


class AlbumReadUseCase {
  final BaseAlbumRepository _repository;

  const AlbumReadUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  Future<Album?> call({required int id}){
    return _repository.read(id: id,);
  }
}

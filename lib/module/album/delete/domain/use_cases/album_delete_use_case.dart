import '../repository/album_repository.dart';


class AlbumDeleteUseCase {
  final BaseAlbumRepository _repository;

  const AlbumDeleteUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  Future<void> call({required int id}){
    return _repository.delete(id: id,);
  }
}

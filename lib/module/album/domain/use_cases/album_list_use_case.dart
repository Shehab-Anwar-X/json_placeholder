import '../repository/album_repository.dart';
import '../entities/album.dart';

class AlbumListUseCase {
  final BaseAlbumRepository _repository;

  const AlbumListUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  Future<List<Album>> call(
      {required int limit, required int offset, int? userId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );
  }
}

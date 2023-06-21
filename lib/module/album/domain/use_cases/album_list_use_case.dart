/// This file contains the implementation of the AlbumListUseCase class.
/// The AlbumListUseCase class handles the business logic for retrieving a list of albums from the repository.

import '../repository/album_repository.dart';
import '../entities/album.dart';

/// The AlbumListUseCase class handles the business logic for retrieving a list of albums from the repository.
class AlbumListUseCase {
  /// The instance of BaseAlbumRepository that the use case will use to retrieve the list of albums.
  final BaseAlbumRepository _repository;

  /// Constructs an AlbumListUseCase object with an instance of BaseAlbumRepository.
  const AlbumListUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  /// Retrieves a list of albums from the repository.
  ///
  /// [limit] The maximum number of albums to retrieve.
  /// [offset] The offset at which to start retrieving albums.
  /// [userId] An optional user ID to filter the albums by.
  Future<List<Album>> call(
      {required int limit, required int offset, int? userId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );
  }
}

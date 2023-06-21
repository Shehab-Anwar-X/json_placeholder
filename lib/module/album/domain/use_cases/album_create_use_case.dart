import '../entities/album_creation_data.dart';
import '../repository/Album_repository.dart';

/// This class represents the use case for creating a new album.
class AlbumCreateUseCase {
  /// Repository for performing operations on albums.
  final BaseAlbumRepository _repository;

  /// Constructor for creating a new AlbumCreateUseCase.
  ///
  /// [repository] parameter is required.
  const AlbumCreateUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  /// This method initializes the create operation for a new album.
  ///
  /// [creationData] parameter is required to create a new album.
  ///
  /// Returns a future that completes with an integer value indicating the id
  /// of the newly created album.
  Future<int> call({required AlbumCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

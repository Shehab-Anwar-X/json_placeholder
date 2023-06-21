import '../entities/album_creation_data.dart';
import '../repository/Album_repository.dart';

/// A class representing an album update use case
///
/// An instance of this class can be used to update an existing album with new data.
///
/// Requires [BaseAlbumRepository] implementation to be passed as a parameter.
class AlbumUpdateUseCase {
  /// The repository used to interact with the albums database.
  final BaseAlbumRepository _repository;

  /// Constructs an instance of [AlbumUpdateUseCase].
  ///
  /// Requires a [BaseAlbumRepository] implementation to be passed as a parameter.
  const AlbumUpdateUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  /// Updates an existing album with new data.
  ///
  /// The album ID to be updated and the new data must be passed as required parameters.
  ///
  /// Returns a [Future] that completes with `void` when the update is successful.
  Future<void> call({required int id, required AlbumCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

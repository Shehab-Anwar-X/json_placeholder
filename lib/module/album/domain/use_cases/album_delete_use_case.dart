import '../repository/Album_repository.dart';

/// A class that represents the use case for deleting an album
///
/// This class contains a method called `call` which deletes an album with a
/// specific id by calling the `delete` method in the injected `BaseAlbumRepository`.
class AlbumDeleteUseCase {
  /// The injected `BaseAlbumRepository` to use for deleting an album
  final BaseAlbumRepository _repository;

  /// Creates a new instance of the `AlbumDeleteUseCase` with the given
  /// `BaseAlbumRepository`.
  ///
  /// The constructor takes an instance of `BaseAlbumRepository` which will be used
  /// for deleting the album in the `call` method.
  const AlbumDeleteUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  /// Deletes an album with a specific id.
  ///
  /// This method takes an integer `id` as parameter and uses the injected
  /// `BaseAlbumRepository`'s `delete` method to delete the album.
  ///
  /// Returns a `Future` of void.
  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}

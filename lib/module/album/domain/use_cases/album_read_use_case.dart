import '../entities/album.dart';
import '../repository/Album_repository.dart';

/// This class performs the functionality of reading an album using the provided repository
class AlbumReadUseCase {
  /// Repository used to read album
  final BaseAlbumRepository _repository;

  /// Constructor to initialize the AlbumReadUseCase object
  /// [repository]: Repository used to read album
  const AlbumReadUseCase({required BaseAlbumRepository repository})
      : _repository = repository;

  /// Method used to read a single album with the provided id
  /// [id]: Id of the album to be read
  Future<Album?> call({required int id}) {
    return _repository.read(
      id: id,
    );
  }
}

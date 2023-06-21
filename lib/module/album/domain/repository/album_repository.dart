/// This file contains an abstract class for BaseAlbumRepository
import '../entities/album_creation_data.dart';
import '../entities/album.dart';

/// This is an abstract class for BaseAlbumRepository, that contains methods for creating,
/// deleting, updating, reading and listing albums
abstract class BaseAlbumRepository {
  /// Initializes the [BaseAlbumRepository] class
  const BaseAlbumRepository();

  /// Creates an album and returns newly created album id
  Future<int> create({required AlbumCreationData creationData});

  /// Deletes an album with the given id
  Future<void> delete({required int id});

  /// Lists albums with the specified [limit], [offset] and optionally [userId]
  Future<List<Album>> list(
      {required int limit, required int offset, int? userId});

  /// Fetches an album with the given id, returns null if not found
  Future<Album?> read({required int id});

  /// Updates an album with given [id] and [newData]
  Future<void> update({required int id, required AlbumCreationData newData});
}

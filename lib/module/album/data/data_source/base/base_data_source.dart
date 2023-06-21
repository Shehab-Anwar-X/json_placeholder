import '../../../domain/entities/album_creation_data.dart';

/// This is the abstract class AlbumBaseDataSource, which defines the methods that must be implemented
/// by classes that will serve as data sources for albums.
///
/// {@category Data Sources}
abstract class AlbumBaseDataSource {
  /// Constructor for the abstract class AlbumBaseDataSource.
  const AlbumBaseDataSource();

  /// Creates a new album based on the provided album creation data.
  ///
  /// [creationData] - AlbumCreationData object containing the details of the album to be created.
  ///
  /// Returns an integer representing the ID of the newly created album.
  Future<int> create({
    required AlbumCreationData creationData,
  });

  /// Deletes an album with the provided ID.
  ///
  /// [id] - The ID of the album to be deleted.
  ///
  /// Throws a Exception if the album with the provided ID can't be found.
  Future<void> delete({
    required int id,
  });

  /// Retrieves a list of albums based on the provided query parameters.
  ///
  /// [limit] - The maximum number of albums to be returned.
  ///
  /// [offset] - The number of albums to skip before starting to return albums.
  ///
  /// [userId] - The ID of the user whose albums should be retrieved. Can be null to retrieve all albums.
  ///
  /// Returns a List of Map<String, dynamic> objects, each representing an album.
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? userId,
  });

  /// Retrieves the details of an album with the provided ID.
  ///
  /// [id] - The ID of the album to be retrieved.
  ///
  /// Returns a Map<String, dynamic> object representing the album.
  /// If an album with the provided ID can't be found, returns null.
  Future<Map<String, dynamic>?> read({
    required int id,
  });

  /// Updates an existing album with the provided ID, using the provided album creation data.
  ///
  /// [id] - The ID of the album to be updated.
  ///
  /// [newData] - AlbumCreationData object containing the updated details of the album.
  ///
  /// Throws an Exception if the album with the provided ID can't be found.
  Future<void> update({
    required int id,
    required AlbumCreationData newData,
  });
}

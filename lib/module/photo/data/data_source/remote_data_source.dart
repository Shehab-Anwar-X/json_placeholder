import '../../domain/entities/photo_creation_data.dart';
import 'base/base_data_source.dart';

/// A class responsible for providing photo data from a remote data source.
class PhotoRemoteDataSource extends PhotoBaseDataSource {
  /// Creates an instance of [PhotoRemoteDataSource].
  const PhotoRemoteDataSource() : super();

  /// Creates a new photo object on the remote data source.
  ///
  /// Returns the ID of the newly created photo as [int].
  ///
  /// Throws [UnimplementedError] if not implemented yet.
  @override
  Future<int> create({required PhotoCreationData creationData}) async {
    throw UnimplementedError();
  }

  /// Deletes a photo object from the remote data source by its ID.
  ///
  /// Requires a valid [id] of the photo object to be deleted.
  ///
  /// Throws [UnimplementedError] if not implemented yet.
  @override
  Future<void> delete({required int id}) async {
    throw UnimplementedError();
  }

  /// Retrieves a list of photo objects from the remote data source.
  ///
  /// Requires [limit] and [offset] parameters for pagination.
  /// Optional [albumId] parameter can be passed to retrieve photos in a specific album.
  ///
  /// Throws [UnimplementedError] if not implemented yet.
  @override
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? albumId,
  }) async {
    throw UnimplementedError();
  }

  /// Retrieves a single photo object from the remote data source by its ID.
  ///
  /// Requires a valid [id] of the photo object to be retrieved.
  ///
  /// Throws [UnimplementedError] if not implemented yet.
  @override
  Future<Map<String, dynamic>?> read({required int id}) async {
    throw UnimplementedError();
  }

  /// Updates a photo object in the remote data source by its ID.
  ///
  /// Requires a valid [id] of the photo object to be updated and [newData] for the updated photo object.
  ///
  /// Throws [UnimplementedError] if not implemented yet.
  @override
  Future<void> update(
      {required int id, required PhotoCreationData newData}) async {
    throw UnimplementedError();
  }
}

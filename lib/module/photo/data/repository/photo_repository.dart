/// This file contains the implementation of the [PhotoRepository] class
/// which provides access to the photo data using [PhotoBaseDataSource].
import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Photo_repository.dart';
import '../model/photo.dart';
import '../../domain/entities/photo_creation_data.dart';
import '../../domain/entities/photo.dart';

/// A repository class that provides access to the photo data using [PhotoBaseDataSource].
class PhotoRepository extends BasePhotoRepository {
  /// The [PhotoBaseDataSource] instance that provides access to the photo data.
  final PhotoBaseDataSource dataSource;

  /// Creates a new instance of [PhotoRepository].
  ///
  /// The [dataSource] parameter is required and should not be null.
  const PhotoRepository(this.dataSource);

  /// Creates a new photo using the given [creationData].
  ///
  /// Returns the ID of the newly created photo as a [Future] with [int] value.
  ///
  /// Throws an [Exception] if a photo with the same [creationData] already exists.
  @override
  Future<int> create({required PhotoCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  /// Deletes the photo with the given [id].
  ///
  /// Throws an [Exception] if the photo does not exist.
  @override
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  /// Retrieves a list of photos with a [limit] and [offset].
  ///
  /// If an [albumId] is provided, retrieves a list of photos that belongs to that album.
  ///
  /// Throws an [Exception] if no photos are found.
  @override
  Future<List<Photo>> list({required int limit, required int offset, int? albumId}) async {
    final result = await dataSource.list(
      limit: limit,
      offset: offset,
      albumId: albumId,
    );

    return List<Photo>.from(
      result.map<PhotoSerializable>(PhotoSerializable.fromMap).toList(),
    );
  }

  /// Retrieves the photo with the given [id].
  ///
  /// Returns the photo as a [Photo] object if it exists, otherwise null.
  @override
  Future<Photo?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : PhotoSerializable.fromMap(result);
  }

  /// Updates the photo with the given [id] using the [newData].
  ///
  /// Throws an [Exception] if the photo does not exist.
  @override
  Future<void> update({required int id, required PhotoCreationData newData}) async {
    final result = await dataSource.update(
      id: id,
      newData: newData,
    );

    return result;
  }
}
import '../entities/photo.dart';
import '../entities/photo_creation_data.dart';

/// This abstract class represents the base photo repository that will be implemented by concrete repositories
abstract class BasePhotoRepository {
  /// Default constructor for BasePhotoRepository, which is a constant constructor
  const BasePhotoRepository();

  /// Creates new photo record in the repository
  ///
  /// Parameters:
  ///
  /// - `creationData` : [PhotoCreationData] - required photo data to create a new photo record
  ///
  /// Return:
  ///
  /// - `int` : The ID of the newly created photo record
  Future<int> create({required PhotoCreationData creationData});

  /// Deletes existing photo record in the repository
  ///
  /// Parameters:
  ///
  /// - `id` : `int` - required ID of the photo record to be deleted
  ///
  /// Return:
  ///
  /// - `void`
  Future<void> delete({required int id});

  /// Lists all photo records that match the search criteria in the repository
  ///
  /// Parameters:
  ///
  /// - `limit` : `int` - required maximum number of records to retrieve
  /// - `offset` : `int` - required offset of records where to start retrieving from
  /// - `albumId` : `int?` - optional album id to filter photos by album
  ///
  /// Return:
  ///
  /// - `Future<List<Photo>>`: A list of [Photo] objects that match the search criteria
  Future<List<Photo>> list(
      {required int limit, required int offset, int? albumId});

  /// Reads a single photo record from the repository
  ///
  /// Parameters:
  ///
  /// - `id` : `int` - required ID of the photo record to be retrieved
  ///
  /// Return:
  ///
  /// - `Future<Photo?>` : A [Photo] object that matches the search criteria or null if not found
  Future<Photo?> read({required int id});

  /// Updates existing photo record in the repository
  ///
  /// Parameters:
  ///
  /// - `id` : `int` - required ID of the photo record to be updated
  /// - `newData` : [PhotoCreationData] - required photo data to update the existing photo record
  ///
  /// Return:
  ///
  /// - `void`
  Future<void> update({required int id, required PhotoCreationData newData});
}

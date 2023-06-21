import '../../../domain/entities/photo_creation_data.dart';

/// This class defines an abstract interface for photo data source.
///
/// This interface specifies method signatures for implementation
/// to create, read, update, delete photo from data source and
/// to retrieve a list of photos.
abstract class PhotoBaseDataSource {
  /// Constructor for [PhotoBaseDataSource].
  const PhotoBaseDataSource();

  /// Create a new photo with the provided [creationData].
  ///
  /// Returns ID of newly created photo.
  ///
  /// Throws [Exception] for any error during creating the photo.
  Future<int> create({
    required PhotoCreationData creationData,
  });

  /// Delete an existing photo of provided [id].
  ///
  /// Throws [Exception] for any error during deleting the photo.
  Future<void> delete({
    required int id,
  });

  /// Retrieve a list of photos.
  ///
  /// The list is returned as [List] of [Map] of photos information.
  ///
  /// [limit] is the number of photos to be retrieved.
  ///
  /// [offset] is the starting index of photos to retrieve.
  ///
  /// [albumId] is an optional argument to retrieve photos
  /// which belongs to a specific album.
  ///
  /// Throws [Exception] for any error during retrieving the photos.
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? albumId,
  });

  /// Read a specific photo of provided [id].
  ///
  /// Returns the photo information as [Map] of type [String:dynamic].
  ///
  /// Returns [null] if photo with [id] is not found.
  ///
  /// Throws [Exception] for any error during reading the photo.
  Future<Map<String, dynamic>?> read({
    required int id,
  });

  /// Update an existing photo with provided data.
  ///
  /// Use [id] to identify the photo to be updated.
  ///
  /// [newData] is the new data for the photo to be updated with.
  ///
  /// Throws [Exception] for any error during updating the photo.
  Future<void> update({
    required int id,
    required PhotoCreationData newData,
  });
}

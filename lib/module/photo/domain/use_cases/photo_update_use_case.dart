import '../entities/photo_creation_data.dart';
import '../repository/Photo_repository.dart';

/// A class that updates a photo's data in the repository.
///
/// The [PhotoUpdateUseCase] class holds methods responsible for updating data related
/// to photos in the repository.
///
/// To use this class, create an instance of [PhotoUpdateUseCase], passing it an instance of a
/// [BasePhotoRepository] implementation which will be used to make database changes. Then call
/// the `call()` method passing an [id] and [newData] to update the photo data.
class PhotoUpdateUseCase {
  final BasePhotoRepository _repository;

  /// Create a new instance of [PhotoUpdateUseCase]
  ///
  /// The [repository] argument is required and should not be null.
  const PhotoUpdateUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  /// Update a photo's data in the repository.
  ///
  /// The [id] argument is required and should be an integer representing the ID of the photo
  /// to be updated. The [newData] argument is required and should be an instance of [PhotoCreationData]
  /// containing the new data to be updated for the photo.
  ///
  /// Returns a [Future] that completes with the updated photo data if successful.
  Future<void> call({required int id, required PhotoCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

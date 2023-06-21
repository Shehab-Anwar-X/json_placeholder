import '../entities/photo_creation_data.dart';
import '../repository/Photo_repository.dart';

/// A class responsible for creating a photo.
///
/// Uses the [BasePhotoRepository] to provide the functionality to create a photo.
class PhotoCreateUseCase {
  final BasePhotoRepository _repository;

  /// Constructs a [PhotoCreateUseCase] with the provided [BasePhotoRepository]
  /// instance to allow for photo creation.
  const PhotoCreateUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  /// Creates a photo with the provided [PhotoCreationData] object.
  ///
  /// Returns the [int] ID of the created photo.
  ///
  /// Throws an error if the photo creation failed.
  Future<int> call({required PhotoCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

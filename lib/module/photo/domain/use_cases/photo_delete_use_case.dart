/// This file contains the implementation of the [PhotoDeleteUseCase] class which is responsible 
/// for deleting the photo with the given id from the repository.

import '../repository/photo_repository.dart';

/// [PhotoDeleteUseCase] is a class that performs the deleting of a photo from the repository.
class PhotoDeleteUseCase {
  final BasePhotoRepository _repository;

  /// Constructor which takes a [BasePhotoRepository] instance as argument and
  /// assigns it to the `_repository` field.
  const PhotoDeleteUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  /// This function calls the `delete` method of the repository with the given id.
  /// The method returns a `Future` which indicates whether or not the operation 
  /// was successful.
  ///
  /// Parameters:
  /// [id]: An integer that represents the id of the photo to be deleted.
  ///
  /// Returns:
  /// A `Future` which resolves to `void`. 
  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}
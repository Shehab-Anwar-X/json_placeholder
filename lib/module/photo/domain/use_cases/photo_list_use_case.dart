/// This file contains the implementation of the [PhotoListUseCase] class, responsible for
/// listing photos from a [BasePhotoRepository].
///
/// It imports the necessary files from the "../repository/photo_repository.dart"
/// and "../entities/photo.dart".
import '../repository/photo_repository.dart';
import '../entities/photo.dart';

/// This class implements the logic for listing photos from a [BasePhotoRepository].
///
/// To create an instance of this class, you must pass an instance of [BasePhotoRepository]
/// to the constructor.
///
/// Usage:
///
/// ```dart
/// final useCase = PhotoListUseCase(repository: MyPhotoRepository());
///
/// final photos = await useCase.call(limit: 10, offset: 0);
/// ```
class PhotoListUseCase {
  final BasePhotoRepository _repository;

  /// Creates an instance of [PhotoListUseCase].
  ///
  /// You must pass an instance of [BasePhotoRepository] to the constructor.
  const PhotoListUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  /// Lists photos from the [_repository].
  ///
  /// You must specify the [limit] and [offset] parameters. You can also specify the [albumId]
  /// parameter to filter photos by album.
  ///
  /// Returns a [List] of [Photo] objects.
  Future<List<Photo>> call(
      {required int limit, required int offset, int? albumId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      albumId: albumId,
    );
  }
}

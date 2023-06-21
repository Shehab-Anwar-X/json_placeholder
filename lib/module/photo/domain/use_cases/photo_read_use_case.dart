import '../entities/photo.dart';
import '../repository/Photo_repository.dart';

/// A class that represents the use case for reading a photo
class PhotoReadUseCase {
  /// A variable that represents the repository for fetching the photo
  final BasePhotoRepository _repository;

  /// A constructor that takes in a repository and sets it to [_repository]
  const PhotoReadUseCase({required BasePhotoRepository repository})
      : _repository = repository;

  /// A function that takes in an [id] parameter and returns a future of [Photo],
  /// fetched by invoking [_repository.read] with [id] parameter passed to it
  Future<Photo?> call({required int id}) {
    return _repository.read(
      id: id,
    );
  }
}

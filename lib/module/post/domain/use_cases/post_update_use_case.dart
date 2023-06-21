import '../entities/post_creation_data.dart';
import '../repository/post_repository.dart';

/// This class represents the use case for updating a post.
///
/// [BasePostRepository] is a required parameter in the constructor. This is used to call the update method from the repository.
/// The `call()` method takes in an integer `id` and a [PostCreationData] object `newData`. This method returns a Future of void.
class PostUpdateUseCase {
  final BasePostRepository _repository;

  /// Constructs the [PostUpdateUseCase] with [BasePostRepository] as parameter.
  const PostUpdateUseCase({required BasePostRepository repository})
      : _repository = repository;

  /// Updates the post in the repository with the given `id` and `newData`.
  ///
  /// Returns a Future of void.
  Future<void> call({required int id, required PostCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

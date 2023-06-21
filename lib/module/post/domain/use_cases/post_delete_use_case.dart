import '../repository/post_repository.dart';

/// This class represents a use case for deleting a post.
///
/// The use case is responsible for deleting a post from the repository.
///
/// [PostDeleteUseCase] requires a [BasePostRepository] to interact with the
/// underlying data layer.
class PostDeleteUseCase {
  final BasePostRepository _repository;

  /// Creates a new instance of [PostDeleteUseCase].
  ///
  /// The constructor takes in a required [repository] parameter of type
  /// [BasePostRepository] which is used to access the post data.
  const PostDeleteUseCase({required BasePostRepository repository})
      : _repository = repository;

  /// Deletes the post identified by the specified [id].
  ///
  /// This method returns a [Future] which completes with no value
  /// when the post has been successfully deleted.
  ///
  /// The [id] parameter is a required integer that represents the
  /// unique identifier of the post to be deleted.
  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}

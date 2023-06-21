import '../entities/post.dart';
import '../repository/post_repository.dart';

/// A class representing the use case for reading a post
class PostReadUseCase {
  /// An instance of the [BasePostRepository] used to read the post
  final BasePostRepository _repository;

  /// Constructor for creating a new instance of [PostReadUseCase]
  ///
  /// Takes a required [BasePostRepository] instance as a parameter and initializes
  /// the [_repository] variable
  const PostReadUseCase({required BasePostRepository repository})
      : _repository = repository;

  /// A method that calls the [read] method of the [_repository] instance
  ///
  /// Takes an integer parameter [id] which is the id of the post to be read,
  /// returns a [Future] instance that completes with the [Post] object
  /// if successful, else it returns null
  Future<Post?> call({required int id}) {
    return _repository.read(
      id: id,
    );
  }
}

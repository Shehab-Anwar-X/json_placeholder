import '../repository/post_repository.dart';
import '../entities/post.dart';

/// This class represents the use case of retrieving a list of posts from the repository
class PostListUseCase {
  final BasePostRepository _repository;

  /// Constructor for the PostListUseCase, takes in the required repository parameter
  const PostListUseCase({required BasePostRepository repository})
      : _repository = repository;

  /// Calls the list function of the repository to retrieve a list of posts
  ///
  /// Takes in the following parameters:
  /// - [limit]: The maximum number of posts to retrieve
  /// - [offset]: The offset from the beginning of the list to start retrieving posts
  /// - [userId]: (optional) The user ID to filter by
  ///
  /// Returns a Future containing a List of Post objects
  Future<List<Post>> call(
      {required int limit, required int offset, int? userId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );
  }
}
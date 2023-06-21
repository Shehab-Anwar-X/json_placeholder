import '../../domain/entities/post.dart';
import '../../domain/entities/post_creation_data.dart';
import '../../domain/repository/post_repository.dart';
import '../data_source/base/base_data_source.dart';
import '../model/post.dart';

/// A repository class for performing CRUD operations on posts using a data source
class PostRepository extends BasePostRepository {
  /// The instance of the post data source
  final PostBaseDataSource dataSource;

  /// Creates an instance of [PostRepository] with a [dataSource]
  const PostRepository(this.dataSource);

  /// Creates a new post using [creationData] and returns the id of the new post
  ///
  /// Throws an error if creation failed
  @override
  Future<int> create({required PostCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  /// Deletes the post with id [id] from the data source
  ///
  /// Throws an error if deletion failed
  @override
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  /// Retrieves a list of posts from the data source
  ///
  /// The list is limited to [limit] number of posts and [offset] is used to skip items
  ///
  /// [userId] is an optional field used to filter posts by user id
  ///
  /// Returns a list of [Post] entities
  @override
  Future<List<Post>> list(
      {required int limit, required int offset, int? userId}) async {
    final result = await dataSource.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );

    return List<Post>.from(
      result.map<PostSerializable>(PostSerializable.fromMap).toList(),
    );
  }

  /// Retrieves a post with the given [id] from the data source
  ///
  /// Returns the [Post] entity if found, otherwise returns null
  @override
  Future<Post?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : PostSerializable.fromMap(result);
  }

  /// Updates the post with [id] using [newData]
  ///
  /// Throws an error if update failed
  @override
  Future<void> update(
      {required int id, required PostCreationData newData}) async {
    final result = await dataSource.update(
      id: id,
      newData: newData,
    );

    return result;
  }
}

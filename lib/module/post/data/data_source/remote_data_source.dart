import 'base/base_data_source.dart';
import '../../domain/entities/post_creation_data.dart';

/// A remote data source for Posts.
class PostRemoteDataSource extends PostBaseDataSource {
  const PostRemoteDataSource() : super();

  /// Creates a new post on the server.
  ///
  /// Returns the id of the created post.
  ///
  /// Throws an [UnimplementedError] if the method is called but not yet implemented.
  @override
  Future<int> create({
    required PostCreationData creationData,
  }) async {
    // TODO: Implement create in Remote data source
    throw UnimplementedError();
  }

  /// Deletes a post with the given id on the server.
  ///
  /// Throws an [UnimplementedError] if the method is called but not yet implemented.
  @override
  Future<void> delete({
    required int id,
  }) async {
    // TODO: Implement delete in Remote data source
    throw UnimplementedError();
  }

  /// Lists posts from the server.
  ///
  /// Returns a list of post data as maps, where each map represents a post.
  /// Only [limit] number of posts are returned, starting from [offset].
  /// If [userId] is specified, only posts by that user are returned.
  ///
  /// Throws an [UnimplementedError] if the method is called but not yet implemented.
  @override
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? userId,
  }) async {
    // TODO: Implement list in Remote data source
    throw UnimplementedError();
  }

  /// Reads a post with the given id from the server.
  ///
  /// Returns a map containing the post data.
  ///
  /// Throws an [UnimplementedError] if the method is called but not yet implemented.
  @override
  Future<Map<String, dynamic>?> read({
    required int id,
  }) async {
    // TODO: Implement read in Remote data source
    throw UnimplementedError();
  }

  /// Updates a post with the given id on the server.
  ///
  /// The post is updated with the new data in [newData].
  ///
  /// Throws an [UnimplementedError] if the method is called but not yet implemented.
  @override
  Future<void> update({
    required int id,
    required PostCreationData newData,
  }) async {
    // TODO: Implement update in Remote data source
    throw UnimplementedError();
  }
}

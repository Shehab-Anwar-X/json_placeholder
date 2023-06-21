import '../../domain/entities/comment_creation_data.dart';
import 'base/base_data_source.dart';

/// A class that represents the remote data source for comments
class CommentRemoteDataSource extends CommentBaseDataSource {
  /// Creates a new instance of [CommentRemoteDataSource]
  const CommentRemoteDataSource() : super();

  /// Creates a new comment
  ///
  /// Returns the ID of the created comment as a [Future]
  ///
  /// Throws an [UnimplementedError] if the function is not implemented yet
  @override
  Future<int> create({
    required CommentCreationData creationData,
  }) async {
    // TODO: Implement create in Remote data source
    throw UnimplementedError();
  }

  /// Deletes a comment by its ID
  ///
  /// Throws an [UnimplementedError] if the function is not implemented yet
  @override
  Future<void> delete({
    required int id,
  }) async {
    // TODO: Implement delete in Remote data source
    throw UnimplementedError();
  }

  /// Returns a list of comments as [Map]
  ///
  /// The returned list contains at most [limit] comments and starts at position
  /// [offset] in the data source. If [postId] is not null, only comments
  /// associated with the specified post will be returned.
  ///
  /// Throws an [UnimplementedError] if the function is not implemented yet
  @override
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? postId,
  }) async {
    // TODO: Implement list in Remote data source
    throw UnimplementedError();
  }

  /// Retrieves a comment by its ID
  ///
  /// Returns a [Map] that represents the comment
  ///
  /// Throws an [UnimplementedError] if the function is not implemented yet
  @override
  Future<Map<String, dynamic>?> read({
    required int id,
  }) async {
    // TODO: Implement read in Remote data source
    throw UnimplementedError();
  }

  /// Updates a comment by its ID
  ///
  /// The new comment data is specified by [newData]
  ///
  /// Throws an [UnimplementedError] if the function is not implemented yet
  @override
  Future<void> update({
    required int id,
    required CommentCreationData newData,
  }) async {
    // TODO: Implement update in Remote data source
    throw UnimplementedError();
  }
}

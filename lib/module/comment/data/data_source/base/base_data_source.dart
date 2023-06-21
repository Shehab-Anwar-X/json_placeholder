import '../../../domain/entities/comment_creation_data.dart';

/// This is an abstract class that serves as a base for any data source that handles comments.
/// This class defines the common methods/interface that any comment data source should implement.
abstract class CommentBaseDataSource {
  const CommentBaseDataSource();

  /// This method creates a new comment.
  ///
  /// The [creationData] parameter is required and of type [CommentCreationData]
  ///
  /// Returns a [Future] of type [int] which represents the id of the created comment
  ///
  Future<int> create({
    required CommentCreationData creationData,
  });

  /// This method deletes a comment based on its [id].
  ///
  /// The [id] parameter is required and of type [int]
  ///
  /// Returns a [Future] of type [void]
  ///
  Future<void> delete({
    required int id,
  });

  /// This method returns a list of comments.
  ///
  /// The [limit] parameter is required and of type [int] which represents the maximum number of records to retrieve.
  ///
  /// The [offset] parameter is required and of type [int] which represents the starting index.
  ///
  /// The [postId] parameter is optional and of type [int]. If specified, it is used to filter the results by a specific post.
  ///
  /// Returns a [Future] of type [List] which contains a list of Maps<String, dynamic>
  ///
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? postId,
  });

  /// This method retrieves a comment based on its [id].
  ///
  /// The [id] parameter is required and of type [int]
  ///
  /// Returns a [Future] of type [Map] which contains a map of type <String, dynamic> that represents the retrieved comment.
  ///
  Future<Map<String, dynamic>?> read({
    required int id,
  });

  /// This method updates a comment based on its [id] with new data [newData].
  ///
  /// The [id] parameter is required and of type [int]
  ///
  /// The [newData] parameter is required and of type [CommentCreationData] that represents the updated comment data to be saved.
  ///
  /// Returns a [Future] of type [void]
  ///
  Future<void> update({
    required int id,
    required CommentCreationData newData,
  });
}

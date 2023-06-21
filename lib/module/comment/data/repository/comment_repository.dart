import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Comment_repository.dart';
import '../model/comment.dart';
import '../../domain/entities/comment_creation_data.dart';
import '../../domain/entities/comment.dart';

/// The implementation of the comment repository
class CommentRepository extends BaseCommentRepository {

  /// The data source used by the comment repository
  final CommentBaseDataSource dataSource;

  /// Constructor for the comment repository
  const CommentRepository(this.dataSource);

  @override
  /// Implementation of the create() function from BaseCommentRepository interface
  /// Used to create a new comment
  Future<int> create({required CommentCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  @override
  /// Implementation of the delete() function from BaseCommentRepository interface
  /// Used to delete a comment with the given id.
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  @override
  /// Implementation of the list() function from BaseCommentRepository interface
  /// Used to list comments with the given limit, offset, and postId.
  Future<List<Comment>> list(
      {required int limit, required int offset, int? postId}) async {
    final result = await dataSource.list(
      limit: limit,
      offset: offset,
      postId: postId,
    );

    return List<Comment>.from(
      result.map<CommentSerializable>(CommentSerializable.fromMap).toList(),
    );
  }

  @override
  /// Implementation of the read() function from BaseCommentRepository interface
  /// Used to read a comment with the given id.
  Future<Comment?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : CommentSerializable.fromMap(result);
  }

  @override
  /// Implementation of the update() function from BaseCommentRepository interface
  /// Used to update a comment with the given id and new data.
  Future<void> update(
      {required int id, required CommentCreationData newData}) async {
    final result = await dataSource.update(
      id: id,
      newData: newData,
    );

    return result;
  }
}
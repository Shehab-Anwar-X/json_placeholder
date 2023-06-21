import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Comment_repository.dart';
import '../model/comment.dart';
import '../../domain/entities/comment_creation_data.dart';
import '../../domain/entities/comment.dart';

class CommentRepository extends BaseCommentRepository {
  final CommentBaseDataSource dataSource;

  const CommentRepository(this.dataSource);

  @override
  Future<int> create({required CommentCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  @override
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  @override
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
  Future<Comment?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : CommentSerializable.fromMap(result);
  }

  @override
  Future<void> update(
      {required int id, required CommentCreationData newData}) async {
    final result = await dataSource.update(
      id: id,
      newData: newData,
    );

    return result;
  }
}

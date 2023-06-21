import '../entities/comment_creation_data.dart';
import '../entities/comment.dart';

abstract class BaseCommentRepository {
  const BaseCommentRepository();

  Future<int> create({required CommentCreationData creationData});

  Future<void> delete({required int id});

  Future<List<Comment>> list(
      {required int limit, required int offset, int? postId});

  Future<Comment?> read({required int id});

  Future<void> update({required int id, required CommentCreationData newData});
}

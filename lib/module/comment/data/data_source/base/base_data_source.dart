import 'dart:async';
import '../../../domain/entities/comment_creation_data.dart';

abstract class CommentBaseDataSource {
  const CommentBaseDataSource();
  Future<int> create({
    required CommentCreationData creationData,
  });
  Future<void> delete({
    required int id,
  });
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? postId,
  });
  Future<Map<String, dynamic>?> read({
    required int id,
  });
  Future<void> update({
    required int id,
    required CommentCreationData newData,
  });
}

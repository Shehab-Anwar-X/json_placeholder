import 'dart:async';
import '../../../domain/entities/post_creation_data.dart';

abstract class PostBaseDataSource {
  const PostBaseDataSource();
  Future<int> create({
    required PostCreationData creationData,
  });
  Future<void> delete({
    required int id,
  });
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? userId,
  });
  Future<Map<String, dynamic>?> read({
    required int id,
  });
  Future<void> update({
    required int id,
    required PostCreationData newData,
  });
}

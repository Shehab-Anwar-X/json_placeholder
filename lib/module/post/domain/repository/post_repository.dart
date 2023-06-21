import '../entities/post_creation_data.dart';
import '../entities/post.dart';

abstract class BasePostRepository {
  const BasePostRepository();

  Future<int> create({required PostCreationData creationData});

  Future<void> delete({required int id});

  Future<List<Post>> list(
      {required int limit, required int offset, int? userId});

  Future<Post?> read({required int id});

  Future<void> update({required int id, required PostCreationData newData});
}

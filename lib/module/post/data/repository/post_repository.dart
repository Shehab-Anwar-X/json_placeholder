import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Post_repository.dart';
import '../model/post.dart';import '../../domain/entities/post_creation_data.dart';
import '../../domain/entities/post.dart';
class PostRepository extends BasePostRepository {
  final PostBaseDataSource dataSource;

  const PostRepository(this.dataSource);

  @override
  Future<int> create({required PostCreationData creationData})async { 
    final result = await dataSource.create(creationData: creationData,);

    return result;
  }

  @override
  Future<void> delete({required int id})async { 
    final result = await dataSource.delete(id: id,);

    return result;
  }

  @override
  Future<List<Post>> list({required int limit, required int offset, int? userId})async { 
    final result = await dataSource.list(limit: limit, offset: offset, userId: userId,);

    return List<Post>.from(
      result.map<PostSerializable>(PostSerializable.fromMap).toList(),
    );          }

  @override
  Future<Post?> read({required int id})async { 
    final result = await dataSource.read(id: id,);

    return result == null ? null : PostSerializable.fromMap(result);
              }

  @override
  Future<void> update({required int id, required PostCreationData newData})async { 
    final result = await dataSource.update(id: id, newData: newData,);

    return result;
  }

}

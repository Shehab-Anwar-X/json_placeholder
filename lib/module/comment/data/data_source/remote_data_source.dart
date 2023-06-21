import 'base/base_data_source.dart';
import '../../domain/entities/comment_creation_data.dart';

class CommentRemoteDataSource extends CommentBaseDataSource {
  const CommentRemoteDataSource() : super();
  @override
  Future<int>   create({required CommentCreationData creationData,})async {

    // TODO: Implement create in Remote data source
    throw UnimplementedError();
  }
  @override
  Future<void>   delete({required int id,})async {

    // TODO: Implement delete in Remote data source
    throw UnimplementedError();
  }
  @override
  Future<List<Map<String , dynamic>>>   list({required int limit, required int offset, int? postId,})async {

    // TODO: Implement list in Remote data source
    throw UnimplementedError();
  }
  @override
  Future<Map<String , dynamic>?>   read({required int id,})async {

    // TODO: Implement read in Remote data source
    throw UnimplementedError();
  }
  @override
  Future<void>   update({required int id, required CommentCreationData newData,})async {

    // TODO: Implement update in Remote data source
    throw UnimplementedError();
  }
}

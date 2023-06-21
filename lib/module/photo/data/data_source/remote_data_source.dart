import 'base/base_data_source.dart';
import '../../domain/entities/photo_creation_data.dart';

class PhotoRemoteDataSource extends PhotoBaseDataSource {
  const PhotoRemoteDataSource() : super();
  @override
  Future<int> create({
    required PhotoCreationData creationData,
  }) async {
    // TODO: Implement create in Remote data source
    throw UnimplementedError();
  }

  @override
  Future<void> delete({
    required int id,
  }) async {
    // TODO: Implement delete in Remote data source
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    int? albumId,
  }) async {
    // TODO: Implement list in Remote data source
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>?> read({
    required int id,
  }) async {
    // TODO: Implement read in Remote data source
    throw UnimplementedError();
  }

  @override
  Future<void> update({
    required int id,
    required PhotoCreationData newData,
  }) async {
    // TODO: Implement update in Remote data source
    throw UnimplementedError();
  }
}

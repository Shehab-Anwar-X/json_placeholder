/// A data source for handling album operations remotely.
///
/// Extends [AlbumBaseDataSource].
import 'base/base_data_source.dart';
import '../../domain/entities/album_creation_data.dart';

class AlbumRemoteDataSource extends AlbumBaseDataSource {
  /// The constructor method for creating a new [AlbumRemoteDataSource] instance.
  ///
  /// Calls the constructor method of [AlbumBaseDataSource] using the `super` keyword.
  const AlbumRemoteDataSource() : super();

  @override
  Future<int> create({
    required AlbumCreationData creationData,
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
    int? userId,
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
    required AlbumCreationData newData,
  }) async {
    // TODO: Implement update in Remote data source
    throw UnimplementedError();
  }
}

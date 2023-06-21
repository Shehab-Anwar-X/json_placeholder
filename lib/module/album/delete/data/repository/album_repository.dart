import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Album_repository.dart';
import '../model/album.dart';import '../../domain/entities/album_creation_data.dart';
import '../../domain/entities/album.dart';
class AlbumRepository extends BaseAlbumRepository {
  final AlbumBaseDataSource dataSource;

  const AlbumRepository(this.dataSource);

  @override
  Future<int> create({required AlbumCreationData creationData})async { 
    final result = await dataSource.create(creationData: creationData,);

    return result;
  }

  @override
  Future<void> delete({required int id})async { 
    final result = await dataSource.delete(id: id,);

    return result;
  }

  @override
  Future<List<Album>> list({required int limit, required int offset, int? userId})async { 
    final result = await dataSource.list(limit: limit, offset: offset, userId: userId,);

    return List<Album>.from(
      result.map<AlbumSerializable>(AlbumSerializable.fromMap).toList(),
    );          }

  @override
  Future<Album?> read({required int id})async { 
    final result = await dataSource.read(id: id,);

    return result == null ? null : AlbumSerializable.fromMap(result);
              }

  @override
  Future<void> update({required int id, required AlbumCreationData newData})async { 
    final result = await dataSource.update(id: id, newData: newData,);

    return result;
  }

}

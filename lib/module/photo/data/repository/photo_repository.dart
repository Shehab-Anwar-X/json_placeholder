import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Photo_repository.dart';
import '../model/photo.dart';import '../../domain/entities/photo_creation_data.dart';
import '../../domain/entities/photo.dart';
class PhotoRepository extends BasePhotoRepository {
  final PhotoBaseDataSource dataSource;

  const PhotoRepository(this.dataSource);

  @override
  Future<int> create({required PhotoCreationData creationData})async { 
    final result = await dataSource.create(creationData: creationData,);

    return result;
  }

  @override
  Future<void> delete({required int id})async { 
    final result = await dataSource.delete(id: id,);

    return result;
  }

  @override
  Future<List<Photo>> list({required int limit, required int offset, int? albumId})async { 
    final result = await dataSource.list(limit: limit, offset: offset, albumId: albumId,);

    return List<Photo>.from(
      result.map<PhotoSerializable>(PhotoSerializable.fromMap).toList(),
    );          }

  @override
  Future<Photo?> read({required int id})async { 
    final result = await dataSource.read(id: id,);

    return result == null ? null : PhotoSerializable.fromMap(result);
              }

  @override
  Future<void> update({required int id, required PhotoCreationData newData})async { 
    final result = await dataSource.update(id: id, newData: newData,);

    return result;
  }

}

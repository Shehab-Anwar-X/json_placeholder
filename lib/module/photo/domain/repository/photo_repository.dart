import '../entities/photo_creation_data.dart';
import '../entities/photo.dart';

abstract class BasePhotoRepository {
  const BasePhotoRepository();

  Future<int> create({required PhotoCreationData creationData});

  Future<void> delete({required int id});

  Future<List<Photo>> list(
      {required int limit, required int offset, int? albumId});

  Future<Photo?> read({required int id});

  Future<void> update({required int id, required PhotoCreationData newData});
}

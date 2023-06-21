  import '../entities/album_creation_data.dart';
import '../entities/album.dart';

abstract class BaseAlbumRepository {
  const BaseAlbumRepository();

  Future<int> create({required AlbumCreationData creationData});

  Future<void> delete({required int id});

  Future<List<Album>> list({required int limit, required int offset, int? userId});

  Future<Album?> read({required int id});

  Future<void> update({required int id, required AlbumCreationData newData});

}

/// This file contains the implementation of the [AlbumRepository] class.
/// This class extends the [BaseAlbumRepository] class.
/// It interacts with the [AlbumBaseDataSource] to perform CRUD operations on Albums.
import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Album_repository.dart';
import '../model/album.dart';
import '../../domain/entities/album_creation_data.dart';
import '../../domain/entities/album.dart';

/// The [AlbumRepository] implementation of [BaseAlbumRepository]
class AlbumRepository extends BaseAlbumRepository {
  /// A reference to the [AlbumBaseDataSource] to perform CRUD operations.
  final AlbumBaseDataSource dataSource;

  /// Constructor to create a new instance of the [AlbumRepository] class.
  ///
  /// It takes a [dataSource] of type [AlbumBaseDataSource] as an argument, and assigns
  /// it to the instance variable [dataSource].
  const AlbumRepository(this.dataSource);

  /// Creates a new Album.
  ///
  /// This method takes an [AlbumCreationData] object as an argument, and returns back
  /// an [int] representing the ID of the newly created album.
  @override
  Future<int> create({required AlbumCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  /// Deletes an existing album by ID.
  ///
  /// This method takes an [int] as an argument representing the ID of the album that needs
  /// to be deleted.
  @override
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  /// Returns a list of [Album]s.
  ///
  /// This method takes [limit] and [offset] as required arguments of type [int],
  /// and a [userId] of type [int] as an optional argument.
  /// It returns a [List<Album>] object representing the list of albums retrieved.
  @override
  Future<List<Album>> list(
      {required int limit, required int offset, int? userId}) async {
    final result = await dataSource.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );

    return List<Album>.from(
      result.map<AlbumSerializable>(AlbumSerializable.fromMap).toList(),
    );
  }

  /// Returns an [Album] by ID.
  ///
  /// This method takes an [int] ID as an argument, and returns an [Album] object
  /// representing the album retrieved from the database.
  @override
  Future<Album?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : AlbumSerializable.fromMap(result);
  }

  /// Updates an existing [Album].
  ///
  /// This method takes an [int] ID, and an [AlbumCreationData] object as arguments,
  /// and returns [void].
  @override
  Future<void> update(
      {required int id, required AlbumCreationData newData}) async {
    final result = await dataSource.update(
      id: id,
      newData: newData,
    );

    return result;
  }
}

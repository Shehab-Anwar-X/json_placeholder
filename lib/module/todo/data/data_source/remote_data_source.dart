import '../../domain/entities/todo_creation_data.dart';
import 'base/base_data_source.dart';

/// A class representing the remote data source for `Todo` entities.
class TodoRemoteDataSource extends TodoBaseDataSource {
  /// Creates a new instance of [TodoRemoteDataSource].
  const TodoRemoteDataSource() : super();

  @override

  /// Creates a new `Todo` entity using the provided [creationData].
  ///
  /// Throws an `UnimplementedError`.
  Future<int> create({
    required TodoCreationData creationData,
  }) async {
    // TODO: Implement create in Remote data source
    throw UnimplementedError();
  }

  @override

  /// Deletes the `Todo` entity with the provided [id].
  ///
  /// Throws an `UnimplementedError`.
  Future<void> delete({
    required int id,
  }) async {
    // TODO: Implement delete in Remote data source
    throw UnimplementedError();
  }

  @override

  /// Retrieves a list of `Todo` entities with the specified [limit], [offset], and [userId].
  ///
  /// Throws an `UnimplementedError`.
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    required int userId,
  }) async {
    // TODO: Implement list in Remote data source
    throw UnimplementedError();
  }

  @override

  /// Retrieves the `Todo` entity with the provided [id].
  ///
  /// Throws an `UnimplementedError`.
  Future<Map<String, dynamic>?> read({
    required int id,
  }) async {
    // TODO: Implement read in Remote data source
    throw UnimplementedError();
  }

  @override

  /// Updates the `Todo` entity with the provided [id] using the provided [newData].
  ///
  /// Throws an `UnimplementedError`.
  Future<void> update({
    required int id,
    required TodoCreationData newData,
  }) async {
    // TODO: Implement update in Remote data source
    throw UnimplementedError();
  }
}

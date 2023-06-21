/// This file contains the implementation of [UserBaseDataSource] for remote data sources.
/// This class extends [UserBaseDataSource] and implements all abstract methods.
/// 
/// To use this class, simply create an instance of [UserRemoteDataSource].
import 'base/base_data_source.dart';
import '../../domain/entities/user_creation_data.dart';

/// This class extends [UserBaseDataSource] and implements all abstract methods for
/// remote data sources.
class UserRemoteDataSource extends UserBaseDataSource {
  /// Default constructor for [UserRemoteDataSource].
  const UserRemoteDataSource() : super();

  @override
  /// Creates a new user in the remote data source.
  /// 
  /// [creationData]: The data needed to create the user.
  /// 
  /// Returns a [Future] that completes to an [int], which represents the ID of the
  /// newly created user.
  Future<int> create({
    required UserCreationData creationData,
  }) async {
    // TODO: Implement create in Remote data source
    throw UnimplementedError();
  }

  @override
  /// Deletes a user from the remote data source.
  /// 
  /// [id]: The ID of the user to delete.
  /// 
  /// Returns a [Future] that completes when the user is successfully deleted.
  Future<void> delete({
    required int id,
  }) async {
    // TODO: Implement delete in Remote data source
    throw UnimplementedError();
  }

  @override
  /// Retrieves a list of users from the remote data source.
  /// 
  /// [limit]: The maximum number of users to retrieve.
  /// [offset]: The index of the first user to retrieve.
  /// 
  /// Returns a [Future] that completes to a [List] of [Map]s, where each [Map]
  /// represents a user.
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
  }) async {
    // TODO: Implement list in Remote data source
    throw UnimplementedError();
  }

  @override
  /// Retrieves a user from the remote data source.
  /// 
  /// [id]: The ID of the user to retrieve.
  /// 
  /// Returns a [Future] that completes to a [Map] representing the user with the
  /// given [id]. If no user is found with the given [id], returns `null`.
  Future<Map<String, dynamic>?> read({
    required int id,
  }) async {
    // TODO: Implement read in Remote data source
    throw UnimplementedError();
  }

  @override
  /// Updates a user in the remote data source.
  /// 
  /// [id]: The ID of the user to update.
  /// [newData]: The updated data for the user.
  /// 
  /// Returns a [Future] that completes when the user is successfully updated.
  Future<void> update({
    required int id,
    required UserCreationData newData,
  }) async {
    // TODO: Implement update in Remote data source
    throw UnimplementedError();
  }
}
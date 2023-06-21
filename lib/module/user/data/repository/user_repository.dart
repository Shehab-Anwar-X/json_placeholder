import '../../domain/entities/user.dart';
import '../../domain/entities/user_creation_data.dart';
import '../../domain/repository/User_repository.dart';
import '../data_source/base/base_data_source.dart';
import '../model/user.dart';

/// A class that extends the `BaseUserRepository` abstract class and implements its methods to provide user-related data.
/// The class takes in a `UserBaseDataSource` instance to communicate with the data layer.
class UserRepository extends BaseUserRepository {
  final UserBaseDataSource dataSource;

  /// Constructs a `UserRepository` object with the given `dataSource`.
  const UserRepository(this.dataSource);

  @override

  /// Calls the `create()` method of the `dataSource` to create a new user with the given `creationData`.
  /// Returns the newly created user's ID in the database.
  Future<int> create({required UserCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  @override

  /// Calls the `delete()` method of the `dataSource` to delete a user with the given `id`.
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  @override

  /// Calls the `list()` method of the `dataSource` to retrieve a list of users and converts them from `UserSerializable` to `User`.
  /// The method takes in two parameters: `limit` - the number of users to retrieve, and `offset` - the index to start retrieving the users from.
  Future<List<User>> list({required int limit, required int offset}) async {
    final result = await dataSource.list(
      limit: limit,
      offset: offset,
    );

    return List<User>.from(
      result.map<UserSerializable>(UserSerializable.fromMap).toList(),
    );
  }

  @override

  /// Calls the `read()` method of the `dataSource` to retrieve a user with the given `id` and converts it from `UserSerializable` to `User`.
  Future<User?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : UserSerializable.fromMap(result);
  }

  @override

  /// Calls the `update()` method of the `dataSource` to update a user with the given `id` using the provided `newData`.
  Future<void> update({
    required int id,
    required UserCreationData newData,
  }) async {
    final result = await dataSource.update(
      id: id,
      newData: newData,
    );

    return result;
  }
}

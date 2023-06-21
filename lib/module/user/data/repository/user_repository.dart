import '../data_source/base/base_data_source.dart';
import '../../domain/repository/User_repository.dart';
import '../model/user.dart';
import '../../domain/entities/user_creation_data.dart';
import '../../domain/entities/user.dart';

class UserRepository extends BaseUserRepository {
  final UserBaseDataSource dataSource;

  const UserRepository(this.dataSource);

  @override
  Future<int> create({required UserCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  @override
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  @override
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
  Future<User?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : UserSerializable.fromMap(result);
  }

  @override
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

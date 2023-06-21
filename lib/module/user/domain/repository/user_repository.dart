  import '../entities/user_creation_data.dart';
import '../entities/user.dart';

abstract class BaseUserRepository {
  const BaseUserRepository();

  Future<int> create({required UserCreationData creationData});

  Future<void> delete({required int id});

  Future<List<User>> list({required int limit, required int offset});

  Future<User?> read({required int id});

  Future<void> update({required int id, required UserCreationData newData});

}

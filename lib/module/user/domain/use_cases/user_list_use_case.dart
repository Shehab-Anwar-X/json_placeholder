import '../repository/user_repository.dart';
import '../entities/user.dart';

class UserListUseCase {
  final BaseUserRepository _repository;

  const UserListUseCase({required BaseUserRepository repository})
      : _repository = repository;

  Future<List<User>> call({required int limit, required int offset}) {
    return _repository.list(
      limit: limit,
      offset: offset,
    );
  }
}

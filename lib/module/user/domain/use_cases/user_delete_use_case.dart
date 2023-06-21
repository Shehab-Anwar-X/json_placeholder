import '../repository/user_repository.dart';

class UserDeleteUseCase {
  final BaseUserRepository _repository;

  const UserDeleteUseCase({required BaseUserRepository repository})
      : _repository = repository;

  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}

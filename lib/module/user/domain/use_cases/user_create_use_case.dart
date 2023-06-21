import '../repository/user_repository.dart';
import '../entities/user_creation_data.dart';

class UserCreateUseCase {
  final BaseUserRepository _repository;

  const UserCreateUseCase({required BaseUserRepository repository})
      : _repository = repository;

  Future<int> call({required UserCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

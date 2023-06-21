import '../repository/user_repository.dart';
import '../entities/user_creation_data.dart';

class UserUpdateUseCase {
  final BaseUserRepository _repository;

  const UserUpdateUseCase({required BaseUserRepository repository})
      : _repository = repository;

  Future<void> call({required int id, required UserCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

import '../repository/user_repository.dart';
import '../entities/user.dart';


class UserReadUseCase {
  final BaseUserRepository _repository;

  const UserReadUseCase({required BaseUserRepository repository})
      : _repository = repository;

  Future<User?> call({required int id}){
    return _repository.read(id: id,);
  }
}

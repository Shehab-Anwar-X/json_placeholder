/// This file contains the implementation of the UserReadUseCase class.
/// This class is responsible for reading a user's data from the repository.
import '../repository/user_repository.dart';
import '../entities/user.dart';

/// The UserReadUseCase class is responsible for reading a user's data from the repository.
class UserReadUseCase {
  final BaseUserRepository _repository;

  /// Instantiates a new UserReadUseCase object with the given repository.
  /// [repository] - The repository to use for retrieving user data.
  const UserReadUseCase({required BaseUserRepository repository})
      : _repository = repository;

  /// Retrieves a user's data from the repository with the given [id].
  /// Returns a [User] object if found, otherwise returns null.
  Future<User?> call({required int id}) {
    return _repository.read(
      id: id,
    );
  }
}

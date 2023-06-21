/// This class is responsible for handling the user delete use case.
/// It takes in a [BaseUserRepository] instance and provides the functionality to delete a user by their ID.
/// To use this class, create an instance of it and call the [call] method, passing the ID of the user to be deleted.
import '../repository/user_repository.dart';

class UserDeleteUseCase {
  final BaseUserRepository _repository;

  /// Constructs a [UserDeleteUseCase] instance with the provided [repository].
  const UserDeleteUseCase({required BaseUserRepository repository})
      : _repository = repository;

  /// Deletes the user with the specified [id] using the repository.
  /// Returns a [Future] that completes when the operation is done.
  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}

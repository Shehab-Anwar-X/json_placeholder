import '../repository/user_repository.dart';
import '../entities/user_creation_data.dart';

/// A use case that updates a user's information in the system.
///
/// This use case receives an [id] and a [newData] object of type
/// [UserCreationData] to update a user's information in the system.
///
/// Usage:
///
/// ```dart
/// await UserUpdateUseCase(repository: UserRepository()).call(
///   id: 1,
///   newData: UserCreationData(
///     name: 'John Doe',
///     email: 'johndoe@example.com',
///     password: 'password',
///   ),
/// );
/// ```
class UserUpdateUseCase {
  final BaseUserRepository _repository;

  /// Creates a [UserUpdateUseCase] with [repository].
  const UserUpdateUseCase({required BaseUserRepository repository})
      : _repository = repository;

  /// Updates a user's information in the system.
  ///
  /// Receives [id] and [newData] to update the user's information.
  Future<void> call({required int id, required UserCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

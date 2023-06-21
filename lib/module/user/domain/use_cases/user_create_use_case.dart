/// This file contains the [UserCreateUseCase] class which is responsible for creating a new user.
/// It utilizes the [BaseUserRepository] class to persist user data.
import '../repository/user_repository.dart';
import '../entities/user_creation_data.dart';

/// The [UserCreateUseCase] class contains a constructor that takes in a [BaseUserRepository] object and
/// exposes a [call] method to create a new user.
class UserCreateUseCase {
  final BaseUserRepository _repository;

  /// The constructor takes a non-null required [BaseUserRepository] object and assigns to the [_repository] field.
  const UserCreateUseCase({required BaseUserRepository repository})
      : _repository = repository;

  /// The [call] method accepts a non-null required [UserCreationDate] object and creates a new user using the [_repository] field.
  Future<int> call({required UserCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

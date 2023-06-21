import '../entities/user.dart';
import '../repository/User_repository.dart';

/// This class represents a use case to retrieve a list of users
class UserListUseCase {
  /// The repository to get the list of users from
  final BaseUserRepository _repository;

  /// Creates a new instance of the [UserListUseCase]
  /// from a [repository] parameter
  const UserListUseCase({required BaseUserRepository repository})
      : _repository = repository;

  /// This method returns a list of [User] models
  ///
  /// The `limit` parameter limits the number of users returned.
  /// The `offset` parameter sets the starting point of the query.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final users = await UserListUseCase(repository: UserRepository())
  ///                   .call(limit: 10, offset: 0);
  /// ```
  Future<List<User>> call({required int limit, required int offset}) {
    return _repository.list(
      limit: limit,
      offset: offset,
    );
  }
}

import '../entities/user.dart';
import '../entities/user_creation_data.dart';

/// This is the abstract class for the Base User Repository.
///
/// This class contains methods for creating, deleting, reading, updating and
/// listing users using UserCreationData and User models.
abstract class BaseUserRepository {
  /// This is the constructor of the Base User Repository.
  const BaseUserRepository();

  /// This method creates a user.
  ///
  /// It takes an object of UserCreationData and returns an integer Future.
  /// This integer value is the created user's ID.
  Future<int> create({required UserCreationData creationData});

  /// This method deletes a user.
  ///
  /// It takes an integer ID of the user that needs to be deleted as a parameter and returns a void Future.
  Future<void> delete({required int id});

  /// This method lists all the users.
  ///
  /// It takes integer values of limit and offset as parameters and returns a User List Future.
  /// This User List contains all the users that are created in the current repository.
  Future<List<User>> list({required int limit, required int offset});

  /// This method reads a user.
  ///
  /// It takes an integer ID of the user that needs to be read as a parameter and returns a User Future.
  /// This User Future contains all the information of the user with the ID passed as parameter.
  /// If the user doesn't exist, it returns null.
  Future<User?> read({required int id});

  /// This method updates a user.
  ///
  /// It takes an integer ID of the user that needs to be updated and an object of UserCreationData that contains
  /// the updated fields information as parameters and returns a void Future.
  Future<void> update({required int id, required UserCreationData newData});
}

import '../../../domain/entities/user_creation_data.dart';

/// An abstract class that defines the required methods for a user data source.
///
/// This class is responsible for handling the CRUD operations for user data in the database.
abstract class UserBaseDataSource {
  /// A const constructor that creates an instance of [UserBaseDataSource].
  const UserBaseDataSource();

  /// Creates a new user entity in the database.
  ///
  /// @param creationData The user creation data to be added to the database.
  ///
  /// @return Returns the ID of the newly created user entity.
  Future<int> create({
    required UserCreationData creationData,
  });

  /// Deletes a user entity from the database.
  ///
  /// @param id The ID of the user entity to be deleted.
  ///
  /// @return Returns a void.
  Future<void> delete({
    required int id,
  });

  /// Retrieves a list of user entities from the database.
  ///
  /// @param limit The maximum number of user entities returned in the list.
  /// @param offset The starting index of the user entities returned in the list.
  ///
  /// @return Returns a list of user entities as maps.
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
  });

  /// Retrieves a specific user entity from the database.
  ///
  /// @param id The ID of the user entity to be retrieved.
  ///
  /// @return Returns the requested user entity as a map or null if the entity is not found.
  Future<Map<String, dynamic>?> read({
    required int id,
  });

  /// Updates an existing user entity in the database.
  ///
  /// @param id The ID of the user entity to be updated.
  /// @param newData The new user creation data to be added to the database.
  ///
  /// @return Returns a void.
  Future<void> update({
    required int id,
    required UserCreationData newData,
  });
}

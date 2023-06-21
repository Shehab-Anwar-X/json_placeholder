import 'dart:async';

/// This import is used to access the [TodoCreationData] class which is an entity.
import '../../../domain/entities/todo_creation_data.dart';

/// This is an abstract class that serves as a blueprint for the creation of data sources.
abstract class TodoBaseDataSource {
  /// This constructor creates a new [TodoBaseDataSource] object.
  const TodoBaseDataSource();

  /// This method creates a new Todo and returns its id.
  Future<int> create({
    required TodoCreationData creationData,
  });

  /// This method deletes a Todo with the specified id.
  Future<void> delete({
    required int id,
  });

  /// This method returns a list of Todos with the specified limits, offset and userId.
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    required int userId,
  });

  /// This method returns a Todo with the specified id.
  Future<Map<String, dynamic>?> read({
    required int id,
  });

  /// This method updates a Todo with the specified id using the newData parameter
  Future<void> update({
    required int id,
    required TodoCreationData newData,
  });
}

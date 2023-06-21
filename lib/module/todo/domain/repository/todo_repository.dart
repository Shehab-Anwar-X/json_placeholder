import '../entities/todo.dart';
import '../entities/todo_creation_data.dart';

/// This abstract class represents the base contract for a Todo repository
abstract class BaseTodoRepository {
  ///Constructor
  const BaseTodoRepository();

  ///Creates a new Todo
  ///
  ///Takes in required [TodoCreationData] object and returns a future integer representing the newly created Todo's id
  Future<int> create({required TodoCreationData creationData});

  ///Deletes an existing Todo
  ///
  ///Takes in required integer [id] representing the id of the Todo to be deleted
  Future<void> delete({required int id});

  ///Lists the todos in the data source
  ///
  ///Takes in required integers [limit], [offset] and [userId], representing the max number of todos to be returned, the position to start from and the id of the user who owns the todos respectively
  Future<List<Todo>> list(
      {required int limit, required int offset, required int userId});

  ///Reads an existing Todo
  ///
  ///Takes in required integer [id] representing the id of the Todo to be read, it returns a [Future] of [Todo] object or null if not exists.
  Future<Todo?> read({required int id});

  ///Updates an existing Todo with new data
  ///
  ///Takes in required integer [id] representing the id of the Todo to be updated and a required [TodoCreationData] object representing the new data. No return value
  Future<void> update({required int id, required TodoCreationData newData});
}

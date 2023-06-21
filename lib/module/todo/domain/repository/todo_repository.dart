  import '../entities/todo_creation_data.dart';
import '../entities/todo.dart';

abstract class BaseTodoRepository {
  const BaseTodoRepository();

  Future<int> create({required TodoCreationData creationData});

  Future<void> delete({required int id});

  Future<List<Todo>> list({required int limit, required int offset, required int userId});

  Future<Todo?> read({required int id});

  Future<void> update({required int id, required TodoCreationData newData});

}

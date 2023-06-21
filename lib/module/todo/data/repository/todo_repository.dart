import '../data_source/base/base_data_source.dart';
import '../../domain/repository/Todo_repository.dart';
import '../model/todo.dart';import '../../domain/entities/todo_creation_data.dart';
import '../../domain/entities/todo.dart';
class TodoRepository extends BaseTodoRepository {
  final TodoBaseDataSource dataSource;

  const TodoRepository(this.dataSource);

  @override
  Future<int> create({required TodoCreationData creationData})async { 
    final result = await dataSource.create(creationData: creationData,);

    return result;
  }

  @override
  Future<void> delete({required int id})async { 
    final result = await dataSource.delete(id: id,);

    return result;
  }

  @override
  Future<List<Todo>> list({required int limit, required int offset, required int userId})async { 
    final result = await dataSource.list(limit: limit, offset: offset, userId: userId,);

    return List<Todo>.from(
      result.map<TodoSerializable>(TodoSerializable.fromMap).toList(),
    );          }

  @override
  Future<Todo?> read({required int id})async { 
    final result = await dataSource.read(id: id,);

    return result == null ? null : TodoSerializable.fromMap(result);
              }

  @override
  Future<void> update({required int id, required TodoCreationData newData})async { 
    final result = await dataSource.update(id: id, newData: newData,);

    return result;
  }

}

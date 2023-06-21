import '../../domain/entities/todo.dart';
import '../../domain/entities/todo_creation_data.dart';
import '../../domain/repository/Todo_repository.dart';
import '../data_source/base/base_data_source.dart';
import '../model/todo.dart';

/// This class implements the [BaseTodoRepository] abstract class to handle the
/// interaction between the domain layer and the data layer, using methods from
/// the [TodoBaseDataSource]. This documentation comment explains the class.
///
/// The [TodoRepository] class expects a [dataSource] parameter that will be used
/// as the data source for the repository.
class TodoRepository extends BaseTodoRepository {
  final TodoBaseDataSource dataSource;

  /// This constructor receives a [dataSource] parameter and constructs a new
  /// [TodoRepository] instance.
  const TodoRepository(this.dataSource);

  @override

  /// This method calls the [create] method from the [dataSource] to create a new
  /// [Todo] object based on the [creationData] parameter.
  Future<int> create({required TodoCreationData creationData}) async {
    final result = await dataSource.create(
      creationData: creationData,
    );

    return result;
  }

  @override

  /// This method calls the [delete] method from the [dataSource] to delete the
  /// [Todo] object with the [id] parameter.
  Future<void> delete({required int id}) async {
    final result = await dataSource.delete(
      id: id,
    );

    return result;
  }

  @override

  /// This method calls the [list] method from the [dataSource] to retrieve a
  /// list of [Todo] objects. It expects [limit], [offset] and [userId] as parameters.
  Future<List<Todo>> list(
      {required int limit, required int offset, required int userId}) async {
    final result = await dataSource.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );

    return List<Todo>.from(
      result.map<TodoSerializable>(TodoSerializable.fromMap).toList(),
    );
  }

  @override

  /// This method calls the [read] method from the [dataSource] to retrieve the
  /// [Todo] object with the [id] parameter or null if it does not exist.
  Future<Todo?> read({required int id}) async {
    final result = await dataSource.read(
      id: id,
    );

    return result == null ? null : TodoSerializable.fromMap(result);
  }

  @override

  /// This method calls the [update] method from the [dataSource] to update the
  /// [Todo] object with the [id] parameter based on the [newData] parameter.
  Future<void> update(
      {required int id, required TodoCreationData newData}) async {
    final result = await dataSource.update(
      id: id,
      newData: newData,
    );

    return result;
  }
}

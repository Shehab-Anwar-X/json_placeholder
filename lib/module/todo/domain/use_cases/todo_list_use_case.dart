/// A use case class that handles the logic of getting a list of todos from a repository.
///
/// [TodoListUseCase] takes in a [BaseTodoRepository] as a dependency and uses it to get a list of [Todo]s.
///
/// Usage:
/// ```dart
/// final todoListUseCase = TodoListUseCase(repository: TodoRepository());
/// final todoList = await todoListUseCase.call(limit: 10, offset: 0, userId: 1);
/// ```
import '../repository/todo_repository.dart';
import '../entities/todo.dart';

class TodoListUseCase {
  /// Repository class that implements [BaseTodoRepository], used to get the list of [Todo]s.
  final BaseTodoRepository _repository;

  /// Constructor for [TodoListUseCase].
  ///
  /// [repository] is a required parameter of type [BaseTodoRepository].
  const TodoListUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  /// Asynchronous function that returns a list of [Todo]s, using the injected repository.
  ///
  /// [limit], [offset], and [userId] are all required parameters of type [int].
  Future<List<Todo>> call(
      {required int limit, required int offset, required int userId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );
  }
}
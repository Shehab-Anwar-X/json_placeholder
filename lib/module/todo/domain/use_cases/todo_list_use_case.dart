import '../repository/todo_repository.dart';
import '../entities/todo.dart';

class TodoListUseCase {
  final BaseTodoRepository _repository;

  const TodoListUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  Future<List<Todo>> call(
      {required int limit, required int offset, required int userId}) {
    return _repository.list(
      limit: limit,
      offset: offset,
      userId: userId,
    );
  }
}

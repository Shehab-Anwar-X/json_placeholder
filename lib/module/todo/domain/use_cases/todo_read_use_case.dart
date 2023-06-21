import '../repository/todo_repository.dart';
import '../entities/todo.dart';


class TodoReadUseCase {
  final BaseTodoRepository _repository;

  const TodoReadUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  Future<Todo?> call({required int id}){
    return _repository.read(id: id,);
  }
}

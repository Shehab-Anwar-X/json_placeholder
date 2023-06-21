import '../repository/todo_repository.dart';

class TodoDeleteUseCase {
  final BaseTodoRepository _repository;

  const TodoDeleteUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}

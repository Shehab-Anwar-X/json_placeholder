import '../repository/todo_repository.dart';
import '../entities/todo_creation_data.dart';

class TodoUpdateUseCase {
  final BaseTodoRepository _repository;

  const TodoUpdateUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  Future<void> call({required int id, required TodoCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

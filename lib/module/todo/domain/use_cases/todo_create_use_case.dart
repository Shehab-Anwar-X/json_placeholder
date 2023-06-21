import '../repository/todo_repository.dart';
import '../entities/todo_creation_data.dart';

class TodoCreateUseCase {
  final BaseTodoRepository _repository;

  const TodoCreateUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  Future<int> call({required TodoCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

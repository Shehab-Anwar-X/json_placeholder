import '../entities/todo_creation_data.dart';
import '../repository/Todo_repository.dart';

/// A class representing a use case for updating a Todo.
///
/// The class requires a [_repository] instance of [BaseTodoRepository] that is
/// responsible for updating the Todo. The use case can be called with [call]
/// function that takes an [id] of the Todo to be updated and [newData] of type
/// [TodoCreationData] that contains the updated data of the Todo.
class TodoUpdateUseCase {
  final BaseTodoRepository _repository;

  /// A constructor that takes a [repository] instance of [BaseTodoRepository].
  const TodoUpdateUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  /// A function that updates a Todo with given [id] and [newData] and returns
  /// a [Future] which completes when the Todo is updated.
  Future<void> call({required int id, required TodoCreationData newData}) {
    return _repository.update(
      id: id,
      newData: newData,
    );
  }
}

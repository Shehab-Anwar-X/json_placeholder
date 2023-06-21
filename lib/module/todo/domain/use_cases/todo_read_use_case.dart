import '../entities/todo.dart';
import '../repository/Todo_repository.dart';

/// This class represents a use case for reading a Todo.
///
/// The [TodoReadUseCase] class provides a single method `call`, which returns
/// a `Future` that resolves to an instance of [Todo] or null if no todo with the
/// specified [id] is found.
///
/// This class requires an implementation of [BaseTodoRepository] which is
/// responsible for persisting and retrieving todo data.
class TodoReadUseCase {
  final BaseTodoRepository _repository;

  /// Create a new instance of [TodoReadUseCase] with the specified [repository].
  ///
  /// The [repository] parameter is required and must not be null.
  const TodoReadUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  /// Read a Todo with the specified [id] from storage.
  ///
  /// The [id] parameter is required and must be a non-negative integer.
  ///
  /// Returns a `Future` that resolves to an instance of [Todo] or null if no todo
  /// with the specified [id] is found.
  Future<Todo?> call({required int id}) {
    return _repository.read(
      id: id,
    );
  }
}

/// This file contains the implementation of the TodoDeleteUseCase class that is
/// responsible for deleting a todo item from the repository.
///

import '../repository/todo_repository.dart';

/// The TodoDeleteUseCase class is responsible for deleting a todo item from the repository.
///
/// To delete a todo item, call `call()` method with the id of the todo item that needs to be deleted.
/// 
/// Example:
/// ```dart
///   final todoDeleteUseCase = TodoDeleteUseCase(repository: todoRepository);
///   await todoDeleteUseCase.call(id: 1);
/// ```
class TodoDeleteUseCase {
  /// A repository reference that implements [BaseTodoRepository] interface.
  final BaseTodoRepository _repository;

  /// Constructor to instantiate a [TodoDeleteUseCase] object.
  ///
  /// `repository` : A reference to a class that implements [BaseTodoRepository] interface.
  const TodoDeleteUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  /// This method deletes a todo item from the repository.
  ///
  /// `id` : The id of the todo item that needs to be deleted.
  ///
  /// Returns : Future<void>
  Future<void> call({required int id}) {
    return _repository.delete(
      id: id,
    );
  }
}
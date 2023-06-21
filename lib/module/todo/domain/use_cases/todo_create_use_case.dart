/// This is the TodoCreateUseCase class which is responsible for initiating the process of creating a new todo
///
/// The class imports the TodoRepository and TodoCreationData classes
import '../repository/todo_repository.dart';
import '../entities/todo_creation_data.dart';

/// This is the TodoCreateUseCase class which initiates the process of creating a new todo by calling the create function
class TodoCreateUseCase {

  /// This is a private variable that stores an instance of the TodoRepository class
  final BaseTodoRepository _repository;

  ///This is a constructor for the TodoCreateUseCase class, which takes an instance of the TodoRepository class as a required parameter
  const TodoCreateUseCase({required BaseTodoRepository repository})
      : _repository = repository;

  /// This is a Future function called when the user wants to create a new todo. It takes an instance of the TodoCreationData class as a required parameter.
  ///
  /// The function initiates the creation of the todo by calling the create function from the TodoRepository class and passing the creationData as a parameter.
  /// The function returns an integer value representing the id of the newly created todo
  Future<int> call({required TodoCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}
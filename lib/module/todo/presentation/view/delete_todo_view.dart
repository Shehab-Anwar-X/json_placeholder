/// The DeleteTodoView class is a flutter widget that displays a view for deleting a specific todo item.
///
/// The view is created using the [Scaffold] widget, which is composed of an [AppBar] and a [Center] widget with a [Text] widget
/// that displays the name of the view.
///
/// The view expects an instance of [IDeleteTodoViewModel] in its constructor, which is used to handle the deletion process on the backend.
///
/// Example usage:
///
/// ```
/// final viewModel = new DeleteTodoViewModel();
/// return DeleteTodoView(viewModel: viewModel);
/// ```
import 'package:flutter/material.dart';
import '../view_model/delete_todo/base_delete_todo/i_delete_todo_view_model.dart';

class DeleteTodoView extends StatelessWidget {
  /// The instance of [IDeleteTodoViewModel] used to handle the deletion process on the backend.
  final IDeleteTodoViewModel viewModel;

  /// Creates a new instance of [DeleteTodoView] with the given [viewModel].
  const DeleteTodoView({required this.viewModel, Key? key}) : super(key: key);

  /// The name of the route used to navigate to this view.
  static const String routeName = '/DeleteTodo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /// The title displayed on the [AppBar] of this view.
        title: const Text('$routeName View'),
      ),
      body: const Center(
        /// The text displayed on the [Center] widget of this view. It simply displays the [routeName].
        child: Text(routeName),
      ),
    );
  }
}

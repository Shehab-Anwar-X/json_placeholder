/// This file contains the implementation of the TodoListView
/// widget which is responsible for rendering the UI of the
/// todo list feature.

import 'package:flutter/material.dart';
import '../view_model/todo_list/base_todo_list/i_todo_list_view_model.dart';

/// This widget represents the UI of the Todo list feature.
class TodoListView extends StatelessWidget {
  /// The view model responsible for providing data and
  /// business logic for the TodoListView.
  final ITodoListViewModel viewModel;

  /// Constructor for the TodoListView widget.
  ///
  /// [viewModel] is a required parameter containing the view model
  /// responsible for providing data and business logic for the widget.
  const TodoListView({required this.viewModel, super.key});

  /// The name of the route associated with this view.
  static const String routeName = '/TodoList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('$routeName View'),
      ),
      body: const Center(
        child: Text(routeName),
      ),
    );
  }
}

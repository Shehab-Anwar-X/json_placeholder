import 'package:flutter/material.dart';
import '../view_model/todo_list/base_todo_list/i_todo_list_view_model.dart';

class TodoListView extends StatelessWidget {
  final ITodoListViewModel viewModel;

  const TodoListView({required this.viewModel,super.key});

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

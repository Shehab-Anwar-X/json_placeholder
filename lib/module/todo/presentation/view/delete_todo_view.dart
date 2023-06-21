import 'package:flutter/material.dart';
import '../view_model/delete_todo/base_delete_todo/i_delete_todo_view_model.dart';

class DeleteTodoView extends StatelessWidget {
  final IDeleteTodoViewModel viewModel;

  const DeleteTodoView({required this.viewModel,super.key});

  static const String routeName = '/DeleteTodo';

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

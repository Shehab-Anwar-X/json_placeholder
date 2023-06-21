import 'package:flutter/material.dart';
import '../view_model/update_todo/base_update_todo/i_update_todo_view_model.dart';

class UpdateTodoView extends StatelessWidget {
  final IUpdateTodoViewModel viewModel;

  const UpdateTodoView({required this.viewModel, super.key});

  static const String routeName = '/UpdateTodo';

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

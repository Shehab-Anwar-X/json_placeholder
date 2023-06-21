import 'package:flutter/material.dart';
import '../view_model/create_todo/base_create_todo/i_create_todo_view_model.dart';

class CreateTodoView extends StatelessWidget {
  final ICreateTodoViewModel viewModel;

  const CreateTodoView({required this.viewModel, super.key});

  static const String routeName = '/CreateTodo';

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

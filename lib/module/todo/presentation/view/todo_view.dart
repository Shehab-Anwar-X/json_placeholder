import 'package:flutter/material.dart';
import '../view_model/todo/base_todo/i_todo_view_model.dart';

class TodoView extends StatelessWidget {
  final ITodoViewModel viewModel;

  const TodoView({required this.viewModel,super.key});

  static const String routeName = '/Todo';

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

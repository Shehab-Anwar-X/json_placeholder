/// This is import statement to import the flutter library's material
import 'package:flutter/material.dart';

/// This is import statement to import the ITodoViewModel from the path ../view_model/todo/base_todo/i_todo_view_model.dart
import '../view_model/todo/base_todo/i_todo_view_model.dart';

/// This is the TodoView StatefulWidget which is created using the StatelessWidget class
class TodoView extends StatelessWidget {
  /// This is the required parameter that is used to get the data from the child classes or other functions
  final ITodoViewModel viewModel;

  /// This is the Constructor of the TodoView class which is used to initialize the required parameters
  const TodoView({required this.viewModel, super.key});

  /// This is a string variable used to represent the routeName of the TodoView
  static const String routeName = '/Todo';

  /// This build method is used to build the widget tree and return a Scaffold widget to create the UI of the TodoView
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

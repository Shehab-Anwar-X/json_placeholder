/// This file contains the [CreateTodoView] widget.
/// This view is responsible for rendering the create todo screen.
import 'package:flutter/material.dart';
import '../view_model/create_todo/base_create_todo/i_create_todo_view_model.dart';

/// This widget represents the create todo screen.
class CreateTodoView extends StatelessWidget {
  /// The [viewModel] is an instance of [ICreateTodoViewModel].
  final ICreateTodoViewModel viewModel;

  /// Constructor to create the [CreateTodoView] instance.
  /// Required parameter: [viewModel]
  const CreateTodoView({required this.viewModel, super.key});

  /// The name of this view's route.
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
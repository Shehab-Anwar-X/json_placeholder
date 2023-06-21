import 'package:flutter/material.dart';
import '../view_model/create_comment/base_create_comment/i_create_comment_view_model.dart';

class CreateCommentView extends StatelessWidget {
  final ICreateCommentViewModel viewModel;

  const CreateCommentView({required this.viewModel,super.key});

  static const String routeName = '/CreateComment';

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

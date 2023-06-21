import 'package:flutter/material.dart';
import '../view_model/delete_comment/base_delete_comment/i_delete_comment_view_model.dart';

class DeleteCommentView extends StatelessWidget {
  final IDeleteCommentViewModel viewModel;

  const DeleteCommentView({required this.viewModel,super.key});

  static const String routeName = '/DeleteComment';

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

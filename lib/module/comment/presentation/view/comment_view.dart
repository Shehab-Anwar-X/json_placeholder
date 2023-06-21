import 'package:flutter/material.dart';
import '../view_model/comment/base_comment/i_comment_view_model.dart';

class CommentView extends StatelessWidget {
  final ICommentViewModel viewModel;

  const CommentView({required this.viewModel, super.key});

  static const String routeName = '/Comment';

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

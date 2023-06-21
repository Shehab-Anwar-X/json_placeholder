import 'package:flutter/material.dart';
import '../view_model/comment_list/base_comment_list/i_comment_list_view_model.dart';

class CommentListView extends StatelessWidget {
  final ICommentListViewModel viewModel;

  const CommentListView({required this.viewModel,super.key});

  static const String routeName = '/CommentList';

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

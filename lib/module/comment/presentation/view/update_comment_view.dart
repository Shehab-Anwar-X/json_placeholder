import 'package:flutter/material.dart';
import '../view_model/update_comment/base_update_comment/i_update_comment_view_model.dart';

class UpdateCommentView extends StatelessWidget {
  final IUpdateCommentViewModel viewModel;

  const UpdateCommentView({required this.viewModel,super.key});

  static const String routeName = '/UpdateComment';

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

import 'package:flutter/material.dart';
import '../view_model/delete_post/base_delete_post/i_delete_post_view_model.dart';

class DeletePostView extends StatelessWidget {
  final IDeletePostViewModel viewModel;

  const DeletePostView({required this.viewModel, super.key});

  static const String routeName = '/DeletePost';

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

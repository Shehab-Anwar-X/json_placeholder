import 'package:flutter/material.dart';
import '../view_model/post/base_post/i_post_view_model.dart';

class PostView extends StatelessWidget {
  final IPostViewModel viewModel;

  const PostView({required this.viewModel, super.key});

  static const String routeName = '/Post';

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

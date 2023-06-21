import 'package:flutter/material.dart';
import '../view_model/create_post/base_create_post/i_create_post_view_model.dart';

class CreatePostView extends StatelessWidget {
  final ICreatePostViewModel viewModel;

  const CreatePostView({required this.viewModel,super.key});

  static const String routeName = '/CreatePost';

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

import 'package:flutter/material.dart';
import '../view_model/post_list/base_post_list/i_post_list_view_model.dart';

class PostListView extends StatelessWidget {
  final IPostListViewModel viewModel;

  const PostListView({required this.viewModel,super.key});

  static const String routeName = '/PostList';

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

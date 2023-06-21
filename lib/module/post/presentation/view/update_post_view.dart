import 'package:flutter/material.dart';
import '../view_model/update_post/base_update_post/i_update_post_view_model.dart';

class UpdatePostView extends StatelessWidget {
  final IUpdatePostViewModel viewModel;

  const UpdatePostView({required this.viewModel, super.key});

  static const String routeName = '/UpdatePost';

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

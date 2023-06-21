import 'package:flutter/material.dart';
import '../view_model/update_user/base_update_user/i_update_user_view_model.dart';

class UpdateUserView extends StatelessWidget {
  final IUpdateUserViewModel viewModel;

  const UpdateUserView({required this.viewModel, super.key});

  static const String routeName = '/UpdateUser';

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

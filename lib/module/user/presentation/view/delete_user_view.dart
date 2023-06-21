import 'package:flutter/material.dart';
import '../view_model/delete_user/base_delete_user/i_delete_user_view_model.dart';

class DeleteUserView extends StatelessWidget {
  final IDeleteUserViewModel viewModel;

  const DeleteUserView({required this.viewModel,super.key});

  static const String routeName = '/DeleteUser';

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

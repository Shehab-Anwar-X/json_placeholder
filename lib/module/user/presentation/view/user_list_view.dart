import 'package:flutter/material.dart';
import '../view_model/user_list/base_user_list/i_user_list_view_model.dart';

class UserListView extends StatelessWidget {
  final IUserListViewModel viewModel;

  const UserListView({required this.viewModel,super.key});

  static const String routeName = '/UserList';

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

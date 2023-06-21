import 'package:flutter/material.dart';
import '../view_model/user/base_user/i_user_view_model.dart';

class UserView extends StatelessWidget {
  final IUserViewModel viewModel;

  const UserView({required this.viewModel,super.key});

  static const String routeName = '/User';

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

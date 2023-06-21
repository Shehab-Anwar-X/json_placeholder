import 'package:flutter/material.dart';
import '../view_model/create_user/base_create_user/i_create_user_view_model.dart';

class CreateUserView extends StatelessWidget {
  final ICreateUserViewModel viewModel;

  const CreateUserView({required this.viewModel, super.key});

  static const String routeName = '/CreateUser';

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

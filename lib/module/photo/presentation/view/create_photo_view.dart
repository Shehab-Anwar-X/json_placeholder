import 'package:flutter/material.dart';
import '../view_model/create_photo/base_create_photo/i_create_photo_view_model.dart';

class CreatePhotoView extends StatelessWidget {
  final ICreatePhotoViewModel viewModel;

  const CreatePhotoView({required this.viewModel, super.key});

  static const String routeName = '/CreatePhoto';

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

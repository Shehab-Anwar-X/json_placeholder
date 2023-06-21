import 'package:flutter/material.dart';
import '../view_model/delete_photo/base_delete_photo/i_delete_photo_view_model.dart';

class DeletePhotoView extends StatelessWidget {
  final IDeletePhotoViewModel viewModel;

  const DeletePhotoView({required this.viewModel, super.key});

  static const String routeName = '/DeletePhoto';

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

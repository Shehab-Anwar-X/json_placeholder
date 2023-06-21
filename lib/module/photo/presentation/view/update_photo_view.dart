import 'package:flutter/material.dart';
import '../view_model/update_photo/base_update_photo/i_update_photo_view_model.dart';

class UpdatePhotoView extends StatelessWidget {
  final IUpdatePhotoViewModel viewModel;

  const UpdatePhotoView({required this.viewModel,super.key});

  static const String routeName = '/UpdatePhoto';

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

import 'package:flutter/material.dart';
import '../view_model/photo/base_photo/i_photo_view_model.dart';

class PhotoView extends StatelessWidget {
  final IPhotoViewModel viewModel;

  const PhotoView({required this.viewModel, super.key});

  static const String routeName = '/Photo';

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

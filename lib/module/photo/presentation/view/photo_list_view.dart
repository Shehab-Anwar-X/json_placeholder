import 'package:flutter/material.dart';
import '../view_model/photo_list/base_photo_list/i_photo_list_view_model.dart';

class PhotoListView extends StatelessWidget {
  final IPhotoListViewModel viewModel;

  const PhotoListView({required this.viewModel, super.key});

  static const String routeName = '/PhotoList';

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

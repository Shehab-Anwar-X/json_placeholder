import 'package:flutter/material.dart';
import '../view_model/create_album/base_create_album/i_create_album_view_model.dart';

class CreateAlbumView extends StatelessWidget {
  final ICreateAlbumViewModel viewModel;

  const CreateAlbumView({required this.viewModel, super.key});

  static const String routeName = '/CreateAlbum';

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

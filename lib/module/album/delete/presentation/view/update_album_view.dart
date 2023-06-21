import 'package:flutter/material.dart';
import '../view_model/update_album/base_update_album/i_update_album_view_model.dart';

class UpdateAlbumView extends StatelessWidget {
  final IUpdateAlbumViewModel viewModel;

  const UpdateAlbumView({required this.viewModel, super.key});

  static const String routeName = '/UpdateAlbum';

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

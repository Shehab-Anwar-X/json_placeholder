import 'package:flutter/material.dart';
import '../view_model/delete_album/base_delete_album/i_delete_album_view_model.dart';

class DeleteAlbumView extends StatelessWidget {
  final IDeleteAlbumViewModel viewModel;

  const DeleteAlbumView({required this.viewModel,super.key});

  static const String routeName = '/DeleteAlbum';

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

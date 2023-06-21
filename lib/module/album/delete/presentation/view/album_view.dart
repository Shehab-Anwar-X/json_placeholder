import 'package:flutter/material.dart';
import '../view_model/album/base_album/i_album_view_model.dart';

class AlbumView extends StatelessWidget {
  final IAlbumViewModel viewModel;

  const AlbumView({required this.viewModel,super.key});

  static const String routeName = '/Album';

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

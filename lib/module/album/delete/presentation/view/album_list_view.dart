import 'package:flutter/material.dart';
import '../view_model/album_list/base_album_list/i_album_list_view_model.dart';

class AlbumListView extends StatelessWidget {
  final IAlbumListViewModel viewModel;

  const AlbumListView({required this.viewModel,super.key});

  static const String routeName = '/AlbumList';

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

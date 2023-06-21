/// This file defines the AlbumListView widget class.
///
/// The widget displays the album list view and receives a view model from a parent widget.
/// The view model is responsible for providing the list of albums to be displayed.
/// The widget's [build] method returns a Scaffold containing the album list view and an app bar.

import 'package:flutter/material.dart';
import '../view_model/album_list/base_album_list/i_album_list_view_model.dart';

/// A widget that displays the album list view and receives a view model.
class AlbumListView extends StatelessWidget {
  /// The view model used to get the album list.
  final IAlbumListViewModel viewModel;

  /// Creates an instance of the [AlbumListView].
  ///
  /// The [viewModel] parameter is required.
  /// The [key] parameter is optional and is used to identify this widget in the widget hierarchy.
  const AlbumListView({required this.viewModel, Key? key}) : super(key: key);

  /// The route name of the widget.
  static const String routeName = '/AlbumList';

  /// Builds the widget tree.
  ///
  /// Returns a Scaffold containing the album list view and an app bar.
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

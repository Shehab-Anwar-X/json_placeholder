/// This file contains the implementation of the [UpdateAlbumView] widget, which
/// displays the view for updating an album in the user interface.
///
/// The widget is implemented as a [StatelessWidget] and accepts an instance of
/// [IUpdateAlbumViewModel] as a parameter to manage the user interactions and
/// business logic of updating an album.
///
/// This file also defines a static [routeName] string, which is used to identify
/// the view in the navigation hierarchy.
import 'package:flutter/material.dart';
import '../view_model/update_album/base_update_album/i_update_album_view_model.dart';

/// A view widget that displays the interface for updating an album.
class UpdateAlbumView extends StatelessWidget {
  /// The view model that manages the user interactions and business logic for
  /// updating the album.
  final IUpdateAlbumViewModel viewModel;

  /// Constructs an instance of [UpdateAlbumView].
  ///
  /// The parameter [viewModel] is required and must not be null.
  ///
  /// The parameter [key] is an optional parameter used to provide the widget
  /// with a unique identifier.
  const UpdateAlbumView({required this.viewModel, Key? key}) : super(key: key);

  /// The name of the route used to identify this view in the navigation hierarchy.
  static const String routeName = '/UpdateAlbum';

  /// Builds the widget hierarchy for the view.
  ///
  /// This method returns a [Scaffold] widget that displays an [AppBar] and
  /// a [Text] widget in the [body].
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

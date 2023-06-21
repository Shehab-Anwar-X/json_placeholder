/// Represents data required for album creation.
///
/// [AlbumCreationData] class is used to store information about the user and album title
/// that will be used to create a new album.
///
/// This class extends [Equatable] to facilitate object comparison and testing.
import 'package:equatable/equatable.dart';

class AlbumCreationData extends Equatable {
  /// The user id.
  final int userId;

  /// The album title.
  final String title;

  /// Creates a new instance of [AlbumCreationData].
  ///
  /// This constructor takes two arguments: userId and title.
  ///
  /// userId is an integer value representing the id of the user who is creating the album.
  ///
  /// title is a string value representing the title of the album.
  const AlbumCreationData({
    required this.userId,
    required this.title,
  });

  @override
  List<Object?> get props {
    return [
      userId,
      title,
    ];
  }
}

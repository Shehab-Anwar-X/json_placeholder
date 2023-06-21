import 'package:equatable/equatable.dart';

/// This is a class representing an album
///
/// An Album object contains the [userId], [id], and [title] of the album.
///
/// Extends the [Equatable] class to allow for easy equality comparisons between objects.
class Album extends Equatable {
  /// The id of the user who created the album.
  final int userId;

  /// The id of the album.
  final int id;

  /// The title of the album.
  final String title;

  /// Constructs a new Album object with the given parameters.
  ///
  /// The [userId], [id], and [title] parameters are required.
  ///
  /// Example usage:
  /// ```
  /// Album myAlbum = Album(userId: 1, id: 2, title: "My Album Title");
  /// ```
  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  @override
  List<Object?> get props {
    return [
      userId,
      id,
      title,
    ];
  }
}

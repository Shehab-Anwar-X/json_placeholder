import 'package:equatable/equatable.dart';

/// A class representing data required to create a photo.
///
/// This class extends the Equatable class from the package "equatable".
class PhotoCreationData extends Equatable {
  /// The ID of the album to which the photo belongs.
  final int albumId;

  /// The title of the photo.
  final String title;

  /// The URL of the photo.
  final String url;

  /// The thumbnail URL of the photo.
  final String thumbnailUrl;

  /// A constant constructor to create an instance of the PhotoCreationData class.
  const PhotoCreationData({
    required this.albumId,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  @override
  /// Returns a list of properties to be used for equality comparison.
  List<Object?> get props {
    return [
      albumId,
      title,
      url,
      thumbnailUrl,
    ];
  }
}
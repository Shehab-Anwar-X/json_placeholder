import 'package:equatable/equatable.dart';

/// The 'Photo' class is defined here which extends 'Equatable'.
class Photo extends Equatable {
  /// 'albumId' is an integer value which is used to store the 'albumId' of photos.
  final int albumId;

  /// 'id' is an integer value which is used to store the 'id' of photos.
  final int id;

  /// 'title' is a string value which is used to store the 'title' of photos.
  final String title;

  /// 'url' is a string value which is used to store the 'url' of photos.
  final String url;

  /// 'thumbnailUrl' is a string value which is used to store the 'thumbnailUrl' of photos.
  final String thumbnailUrl;

  /// This constructor is used to initialize the 'Photo' class.
  const Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  /// This method is used to get the properties of the 'Photo' class.
  @override
  List<Object?> get props {
    return [
      albumId,
      id,
      title,
      url,
      thumbnailUrl,
    ];
  }
}

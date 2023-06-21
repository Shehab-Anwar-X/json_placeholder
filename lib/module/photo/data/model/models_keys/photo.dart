/// This is the class for defining constants to use as keys in a photo object.
abstract class PhotoKeys {
  /// A constant representing the key for the album id.
  const PhotoKeys();

  /// A constant representing the key for the photo id.
  static const id = 'id';

  /// A constant representing the key for the album od.
  static const albumId = 'album_id';

  /// A constant representing the key for the photo title.
  static const title = 'title';

  /// A constant representing the key for the photo url.
  static const url = 'url';

  /// A constant representing the key for the photo thumbnail url.
  static const thumbnailUrl = 'thumbnail_url';

  /// Returns a list of all the keys as strings.
  static List<String> toList() {
    return <String>[
      albumId,
      id,
      title,
      url,
      thumbnailUrl,
    ];
  }
}

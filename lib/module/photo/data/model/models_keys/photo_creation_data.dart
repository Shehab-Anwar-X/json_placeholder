/// A class that defines the keys for creating a photo
abstract class PhotoCreationDataKeys {
  /// Empty constructor
  const PhotoCreationDataKeys();

  /// The album ID key
  static const albumId = 'album_id';

  /// The title key
  static const title = 'title';

  /// The URL key
  static const url = 'url';

  /// The thumbnail URL key
  static const thumbnailUrl = 'thumbnail_url';

  /// Returns a list of all keys
  static List<String> toList() {
    return <String>[
      albumId,
      title,
      url,
      thumbnailUrl,
    ];
  }
}

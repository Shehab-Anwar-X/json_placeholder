abstract class PhotoCreationDataKeys {
  const PhotoCreationDataKeys();
  
  static const albumId = 'album_id';
  static const title = 'title';
  static const url = 'url';
  static const thumbnailUrl = 'thumbnail_url';

  static List<String> toList() {
    return <String>[
      albumId,
      title,
      url,
      thumbnailUrl,
    ];
  }
}

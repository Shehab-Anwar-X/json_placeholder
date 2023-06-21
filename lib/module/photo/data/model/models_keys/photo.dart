abstract class PhotoKeys {
  const PhotoKeys();
  
  static const albumId = 'album_id';
  static const id = 'id';
  static const title = 'title';
  static const url = 'url';
  static const thumbnailUrl = 'thumbnail_url';

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

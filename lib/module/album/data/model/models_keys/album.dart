abstract class AlbumKeys {
  const AlbumKeys();

  static const userId = 'user_id';
  static const id = 'id';
  static const title = 'title';

  static List<String> toList() {
    return <String>[
      userId,
      id,
      title,
    ];
  }
}

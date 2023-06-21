abstract class AlbumCreationDataKeys {
  const AlbumCreationDataKeys();
  
  static const userId = 'user_id';
  static const title = 'title';

  static List<String> toList() {
    return <String>[
      userId,
      title,
    ];
  }
}

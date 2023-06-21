/// This class is used to define the keys required to create a new album.
///
/// It contains constants to define the userId and title keys.
abstract class AlbumCreationDataKeys {
  const AlbumCreationDataKeys();

  /// The key for the user id.
  static const userId = 'user_id';

  /// The key for the album title.
  static const title = 'title';

  /// A utility method to convert the keys to a list.
  static List<String> toList() {
    return <String>[
      userId,
      title,
    ];
  }
}

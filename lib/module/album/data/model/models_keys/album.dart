/// An abstract class that defines keys for an Album object.
abstract class AlbumKeys {
  /// Constructor of the AlbumKeys class.
  const AlbumKeys();

  /// A constant key that represents the user ID of an album.
  static const userId = 'user_id';

  /// A constant key that represents the ID of an album.
  static const id = 'id';

  /// A constant key that represents the title of an album.
  static const title = 'title';

  /// Static method that returns a list of all keys in an album.
  static List<String> toList() {
    return <String>[
      userId,
      id,
      title,
    ];
  }
}

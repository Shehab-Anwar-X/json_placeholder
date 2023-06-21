import 'package:equatable/equatable.dart';

class AlbumCreationData extends Equatable {
  final int userId;
  final String title;

  const AlbumCreationData({
    required this.userId,
    required this.title,
  });

  @override
  List<Object?> get props {
    return [
      userId,
      title,
    ];
  }
}

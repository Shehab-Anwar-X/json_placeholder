import 'package:equatable/equatable.dart';

class PhotoCreationData extends Equatable {
  final int albumId;
  final String title;
  final String url;
  final String thumbnailUrl;

  const PhotoCreationData({
    required this.albumId,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  
  @override
  List<Object?> get props {
    return [
      albumId,
    	title,
    	url,
    	thumbnailUrl,
    ];
  }
}

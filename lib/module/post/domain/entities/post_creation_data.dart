/// This file contains the PostCreationData class that extends the Equatable class.

import 'package:equatable/equatable.dart';

/// Represents the data required to create a new post.
class PostCreationData extends Equatable {
  /// The user ID of the user who created the post.
  final int userId;

  /// The title of the post.
  final String title;

  /// The body (content) of the post.
  final String body;

  /// Creates a new instance of the PostCreationData class.
  const PostCreationData({
    required this.userId,
    required this.title,
    required this.body,
  });

  @override
  List<Object?> get props {
    return [
      userId,
      title,
      body,
    ];
  }
}

/// This file contains the implementation of the PostCreateUseCase class
/// which is responsible for creating a new post using an instance of
/// BasePostRepository.

import '../repository/post_repository.dart';
import '../entities/post_creation_data.dart';

/// The PostCreateUseCase class encapsulates the behavior of creating a new post.
class PostCreateUseCase {
  final BasePostRepository _repository;

  /// Constructs a new instance of PostCreateUseCase with the provided BasePostRepository instance.
  const PostCreateUseCase({required BasePostRepository repository})
      : _repository = repository;

  /// Calls the create method of the repository with the given PostCreationData and returns the ID of the newly created post.
  ///
  /// Throws an exception if the repository's create method fails.
  Future<int> call({required PostCreationData creationData}) {
    return _repository.create(
      creationData: creationData,
    );
  }
}

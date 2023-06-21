/// This import statement imports the 'dart:convert' library to convert JSON
/// encoded strings to and from object representations.
import 'dart:convert';

/// These import statements import 'models_keys/post_creation_data.dart'
/// and '../../domain/entities/post_creation_data.dart'.
import 'models_keys/post_creation_data.dart';
import '../../domain/entities/post_creation_data.dart';

/// This class extends the 'PostCreationData' class defined in
/// '../../domain/entities/post_creation_data.dart' and provides a
/// serializable version of it.
class PostCreationDataSerializable extends PostCreationData {
  /// This constructor creates a new instance of 'PostCreationDataSerializable'
  /// with required arguments 'userId', 'title', and 'body'.
  const PostCreationDataSerializable({
    required super.userId,
    required super.title,
    required super.body,
  });

  /// This 'copyWith' method creates a new instance of
  /// 'PostCreationDataSerializable' with optional arguments 'userId',
  /// 'title', and 'body' and returns it.
  PostCreationDataSerializable copyWith({
    int? userId,
    String? title,
    String? body,
  }) {
    return PostCreationDataSerializable(
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  /// This 'fromJson' factory method creates a new instance of
  /// 'PostCreationDataSerializable' from a JSON encoded string and returns it.
  factory PostCreationDataSerializable.fromJson(String str) {
    return PostCreationDataSerializable.fromMap(
      Map<String, dynamic>.from(json.decode(str) as Map),
    );
  }

  /// This 'toJson' method encodes the object as a JSON encoded string and
  /// returns it.
  String toJson() {
    return json.encode(toMap());
  }

  /// This 'fromMap' factory method creates a new instance of
  /// 'PostCreationDataSerializable' from a map of properties and returns it.
  factory PostCreationDataSerializable.fromMap(Map<String, dynamic> json) {
    return PostCreationDataSerializable(
      userId: json[PostCreationDataKeys.userId] as int,
      title: json[PostCreationDataKeys.title] as String,
      body: json[PostCreationDataKeys.body] as String,
    );
  }

  /// This 'toMap' method returns a map of this object's properties.
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      PostCreationDataKeys.userId: userId,
      PostCreationDataKeys.title: title,
      PostCreationDataKeys.body: body,
    };
  }
}

/// This abstract class provides an adapter for creating instances of
/// 'PostCreationDataSerializable' for 'PostCreationData'.
abstract class PostCreationDataAdapter {
  /// This const constructor creates a new instance of
  /// 'PostCreationDataAdapter'.
  const PostCreationDataAdapter();

  /// This 'serializableModelFromPostCreationData' static method creates a new
  /// instance of 'PostCreationDataSerializable' from a 'PostCreationData'
  /// model and returns it.
  static PostCreationDataSerializable serializableModelFromPostCreationData({
    required PostCreationData model,
  }) {
    return PostCreationDataSerializable(
      userId: model.userId,
      title: model.title,
      body: model.body,
    );
  }
}

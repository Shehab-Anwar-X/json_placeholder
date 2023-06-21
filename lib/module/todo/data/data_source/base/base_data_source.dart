import 'dart:async';
import '../../../domain/entities/todo_creation_data.dart';

abstract class TodoBaseDataSource {
  const TodoBaseDataSource();
  Future<int> create({
    required TodoCreationData creationData,
  });
  Future<void> delete({
    required int id,
  });
  Future<List<Map<String, dynamic>>> list({
    required int limit,
    required int offset,
    required int userId,
  });
  Future<Map<String, dynamic>?> read({
    required int id,
  });
  Future<void> update({
    required int id,
    required TodoCreationData newData,
  });
}

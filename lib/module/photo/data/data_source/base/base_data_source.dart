import 'dart:async';
import '../../../domain/entities/photo_creation_data.dart';

abstract class PhotoBaseDataSource {
  const PhotoBaseDataSource();
Future<int>   create({required PhotoCreationData creationData,});
Future<void>   delete({required int id,});
Future<List<Map<String , dynamic>>>   list({required int limit, required int offset, int? albumId,});
Future<Map<String , dynamic>?>   read({required int id,});
Future<void>   update({required int id, required PhotoCreationData newData,});
}
